library(testthat)
library(TimeSeriesRegression)

test_that("calculate_rmse computes RMSE correctly", {
  actual <- c(1, 2, 3, 4, 5)
  predicted <- c(1.1, 2.1, 3, 4, 4.9)
  rmse <- calculate_rmse(actual, predicted)
  expect_equal(round(rmse, 2), 0.14)
})
