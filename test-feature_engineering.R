library(testthat)
library(TimeSeriesRegression)

test_that("create_lags creates lagged features", {
  data <- c(1, 2, 3, 4, 5)
  lags <- create_lags(data, c(1, 2))
  expect_equal(lags[[1]], c(NA, 1, 2, 3, 4))
  expect_equal(lags[[2]], c(NA, NA, 1, 2, 3))
})
