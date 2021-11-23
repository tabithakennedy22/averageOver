#' Calculate the Average of 'a' per 'b'
#'
#' This function calculates the average of one object, 'a', per a second object, 'b', and then takes the mean across all observations. Object must be numerical.
#'
#' @param data Is the dataframe containing objects of interest.
#' @param a Is a column of numbers which we are primarily interested in. The parameter is named 'a', as logically, this object should be inserted into the function prior to 'b'.
#' @param b Is a column of numbers for which object 'a' is measure against. The parameter is named 'b', as logically, this object should come after 'a', given that we are dividing 'a' over 'b'.
#' @return Returns the mean across all observations resulting from taking the average of 'a' per 'b'.
#' @importFrom dplyr mutate
#' @examples
#' library(datateachr)
#' avg_a_per_b(apt_buildings, apt_buildings$no_of_storeys, apt_buildings$no_of_units)
#' avg_a_per_b(apt_buildings, apt_buildings$no_barrier_free_accessible_units, apt_buildings$no_of_units)
#' @export

avg_a_per_b <- function (data, a, b) {
  if (!is.numeric(a)) {
    stop("Error: object for 'a' must be numeric. You have input an object of class: ", class(a)[1])
  }
  if (!is.numeric(b)) {
    stop("Error: object for 'b' must be numeric. You have input an object of class: ", class(b)[1])
  }
  data <- dplyr::mutate(data, a_per_b = a/b)
  return(mean(data$a_per_b, na.rm=TRUE))
}
