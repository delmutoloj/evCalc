#' Calculate Battery Degradation
#'
#' This function computes the percentage decrease in usable battery capacity
#' compared to its original capacity when new.
#'
#' @param csv A data frame containing the necessary columns for `kWhUsed()`
#'    and `percentUsed()`, which are used to calculate energy consumption and
#'    battery percentage used.
#' @param kWhNew A numeric value representing the original full battery
#'    capacity (in kWh) when the battery was new.
#' @return The percentage decrease in usable battery capacity.
#' @examples
#' \dontrun{
#' data <- data.frame(SoC = c(90, 80, 70), Distance = c(0, 10, 20))
#' degradation(data, kWhNew = 75)  # Returns battery degradation percentage
#' }
#' @seealso kWhUsed, percentUsed, capacity
#' @export
degradation <- function(csv, kWhNew) {
  # Total kWh
  kWhMeasured <- kWhUsed(csv)
  # Battery percentage used during logging session
  percentUsed <- percentUsed(csv)
  # Projected capacity at 100% SoC
  capacity <- capacity(csv)
  # Calculate percentage of degradation in battery capacity
  degradation <- (capacity - kWhNew) / kWhNew * 100
  # Return degradation value
  return(degradation)
}
