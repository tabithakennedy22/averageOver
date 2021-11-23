
<!-- README.md is generated from README.Rmd. Please edit that file -->

# averageOver

<!-- badges: start -->
<!-- badges: end -->

The goal of averageOver is to create a new column in your dataset by
dividing values from column a by values of column b, then calculates the
mean for this new column, producing an estimate for the average of a per
b.

## Installation

averageOver is not yet on CRAN. But, you can download it from this
repository using the following R command:

``` r
devtools::install_github("Tabitha-kdy/averageOver")
```

## Example

This is a basic example which shows you how to calculate the average
number of units per number of storeys using the the apt\_buildings
dataset from datateachr:

``` r
library(averageOver)
library(datateachr)

avg_a_per_b(apt_buildings, apt_buildings$no_of_units, 
    apt_buildings$no_of_storeys)
#> [1] Inf
```
