#' Calculate Logging Session Duration
#'
#' This function computes the duration of a logging session in minutes based
#' on the last recorded time in a CSV dataset.
#'
#' @param csv A data frame containing a `Time` column, where `Time` represents
#'    elapsed time in seconds.
#' @return The duration of the logging session in minutes.
#' @examples
#' \dontrun{
#' data <- data.frame(Time = c(0, 120, 300, 600))
#' duration(data)  # Returns 10 (600 seconds converted to minutes)
#' }
#' @export
duration <- function(csv) {
  duration <- tail(csv$Time, n = 1) / 60
  return(duration)
}
