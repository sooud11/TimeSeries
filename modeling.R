#' Fit a Linear Regression Model
#'
#' @param data A data frame with predictors and target.
#' @param predictors A vector of column names for predictors.
#' @param target The target variable column name.
#' @return A fitted linear regression model.
#' @export
fit_linear_model <- function(data, predictors, target) {
  formula <- as.formula(paste(target, "~", paste(predictors, collapse = "+")))
  lm(formula, data = data)
}

#' Fit an ARIMA Model
#'
#' @param data A numeric vector of time series values.
#' @return A fitted ARIMA model.
#' @export
fit_arima_model <- function(data) {
  forecast::auto.arima(data)
}
