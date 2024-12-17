#' Calculate RMSE
#'
#' @param actual A numeric vector of actual values.
#' @param predicted A numeric vector of predicted values.
#' @return The RMSE value.
#' @export
calculate_rmse <- function(actual, predicted) {
  sqrt(mean((actual - predicted)^2))
}
