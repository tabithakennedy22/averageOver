library(datateachr)

test_that("function is calculating correctly", {
   apt_buildings <- datateachr::apt_buildings
  expect_equal(0.1350001, avg_a_per_b(apt_buildings, apt_buildings$no_of_elevators,
               apt_buildings$no_of_storeys), tolerance=1e-3) })


test_that("function will return error if character object is entered", {
  apt_buildings <- datateachr::apt_buildings
   expect_error(avg_a_per_b(apt_buildings, apt_buildings$air_conditioning,
                            apt_buildings$no_of_storeys)) })


test_that("objects selected for a and b are numeric", {
  apt_buildings <- datateachr::apt_buildings
  test3 <- avg_a_per_b(apt_buildings,
            apt_buildings$no_barrier_free_accessible_units,
            apt_buildings$no_of_storeys)
   expect_that( test3, is_a("numeric") )})
