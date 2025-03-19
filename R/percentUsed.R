#' Calculate Battery Percentage Used
#'
#' This function computes the difference in state of charge (SoC) to determine
#' the percentage of battery used during a logging session.
#'
#' @param csv A data frame containing a `SoC` column, which represents the
#'    battery state of charge (percentage) at different time points.
#' @return The percentage of battery used during the session.
#' @examples
#' \dontrun{
#' data <- data.frame(SoC = c(90, 85, 80, 75))
#' percentUsed(data)  # Returns 15 (90 - 75)
#' }
#' @export
percentUsed <- function(csv) {
  percentUsed <- head(csv$SoC, n = 1) - tail(csv$SoC, n = 1)
  return(percentUsed)
}
