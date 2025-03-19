#' Calculate Vehicle Efficiency (mi/kWh)
#'
#' This function computes the vehicle's efficiency in miles per kilowatt-hour
#' (mi/kWh), based on the total distance traveled and energy consumed.
#'
#' @param csv A data frame containing a `Distance` column representing the
#'    total distance traveled (in miles) and data required by `kWhUsed()`.
#' @return The vehicle efficiency in miles per kilowatt-hour (mi/kWh).
#' @examples
#' \dontrun{
#' data <- data.frame(Distance = c(0, 5, 15, 30))
#' efficiency(data)  # Returns efficiency based on kWhUsed(data)
#' }
#' @seealso kWhUsed
#' @export
efficiency <- function(csv) {
  # Total kWh
  kWhMeasured <- kWhUsed(csv)
  # efficiency = total distance / kWh used
  efficiency <- tail(csv$Distance, n = 1) / kWhMeasured
  # Return efficiency
  return(efficiency)
}
