#' Generate Lag Features
#'
#' @param data A numeric vector of time series values.
#' @param lags A vector of lag values to create.
#' @return A data frame with lagged features.
#' @export
create_lags <- function(data, lags) {
  as.data.frame(sapply(lags, function(lag) dplyr::lag(data, lag)))
}
