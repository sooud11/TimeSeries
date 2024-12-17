

library(testthat)
library(TimeSeriesRegression)

test_that("clean_data works with missing values", {
  data <- data.frame(
    time = c("2023-01-01", "2023-01-02", "2023-01-03"),
    value = c(1, NA, 3)
  )
  cleaned <- clean_data(data, "time", "value")
  expect_equal(cleaned$value, c(1, 1, 3))
})

test_that("clean_data converts time to Date", {
  data <- data.frame(
    time = c("2023-01-01", "2023-01-02", "2023-01-03"),
    value = c(1, 2, 3)
  )
  cleaned <- clean_data(data, "time", "value")
  expect_s3_class(cleaned$time, "Date")
})

test_that("is_stationary identifies stationary series", {
  stationary_data <- c(1, 2, 1, 2, 1, 2)
  expect_true(is_stationary(stationary_data))
})

test_that("is_stationary identifies non-stationary series", {
  non_stationary_data <- c(1, 2, 3, 4, 5)
  expect_false(is_stationary(non_stationary_data))
})
