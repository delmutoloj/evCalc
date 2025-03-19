#' Calculate Estimated Vehicle Range
#'
#' This function computes the estimated driving range (in miles) based on
#' energy consumption, efficiency, and projected battery capacity.
#'
#' @param csv A data frame containing necessary columns for `kWhUsed()`,
#'    `efficiency()`, and `percentUsed()`, which are used to calculate energy
#'    consumption, efficiency, and battery percentage used.
#' @return The estimated vehicle range in miles.
#' @examples
#' \dontrun{
#' data <- data.frame(SoC = c(90, 80, 70), Distance = c(0, 10, 20), Power = c(10, 12, 8))
#' estimatedRange(data)  # Returns estimated range in miles
#' }
#' @seealso kWhUsed, efficiency, percentUsed
#' @export
estimatedRange <- function(csv) {
  # Total kWh
  kWhMeasured <- kWhUsed(csv)
  # efficiency = total distance / kWh used
  efficiency <- efficiency(csv)
  # Battery percentage used during logging session
  percentUsed <- percentUsed(csv)
  # Projected capacity at 100%
  kWhProjected <- 100 * kWhMeasured / percentUsed
  # Calculate estimated range
  estimatedRange <- efficiency * kWhProjected
  # Return estimate range
  return(estimatedRange)
}
