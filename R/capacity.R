#' Calculate Projected Battery Capacity
#'
#' This function estimates the total battery capacity in kilowatt-hours (kWh)
#' based on energy consumption and the percentage of battery used during a
#' logging session.
#'
#' @param csv A data frame containing the necessary columns for `kWhUsed()`
#'    and `percentUsed()`, which are used to calculate energy consumption and
#'    battery percentage used.
#' @return The projected full battery capacity in kilowatt-hours (kWh).
#' @examples
#' \dontrun{
#' data <- data.frame(SoC = c(90, 80, 70), Distance = c(0, 10, 20))
#' capacity(data)  # Returns projected capacity based on
#'     kWhUsed(data) and percentUsed(data)
#' }
#' @seealso kWhUsed, percentUsed
#' @export
capacity <- function(csv) {
  # Total kWh
  kWhMeasured <- kWhUsed(csv)
  # Battery percentage used during logging session
  percentUsed <- percentUsed(csv)
  # Projected capacity at 100%
  capacity <- 100 * kWhMeasured / percentUsed
  # Return projected capacity
  return(capacity)
}
