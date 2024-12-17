library(testthat)
library(TimeSeriesRegression)

test_that("fit_linear_model fits a linear regression model", {
  data <- data.frame(x1 = 1:10, x2 = 10:1, y = c(3, 5, 7, 9, 11, 13, 15, 17, 19, 21))
  model <- fit_linear_model(data, c("x1", "x2"), "y")
  expect_s3_class(model, "lm")
  expect_equal(model$coefficients["x1"], 2)  # Check coefficients
})

test_that("fit_arima_model fits an ARIMA model", {
  data <- ts(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))
  model <- fit_arima_model(data)
  expect_s3_class(model, "Arima")
})
