#' Clean and Prepare Time Series Data
#'
#' @param data A data frame with time and target columns.
#' @param time_col Name of the time column.
#' @param target_col Name of the target variable column.
#' @return A cleaned data frame.
#' @export
clean_data <- function(data, time_col, target_col) {
  data[[time_col]] <- as.Date(data[[time_col]])
  if (anyNA(data[[target_col]])) {
    data[[target_col]] <- zoo::na.locf(data[[target_col]])
  }
  data
}

#' Check for Stationarity
#'
#' @param data A numeric vector of time series values.
#' @return Logical indicating if the data is stationary.
#' @export
is_stationary <- function(data) {
  test <- tseries::adf.test(data)
  test$p.value < 0.05
}
