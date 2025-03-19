#' Calculate Energy Used (kWh)
#'
#' This function computes the total energy consumption in kilowatt-hours (kWh)
#' during a logging session.
#'
#' @param csv A data frame containing a `Power` column (power in kW) and
#'    necessary data for `duration()`, which calculates session length.
#' @return The total energy used in kilowatt-hours (kWh).
#' @examples
#' \dontrun{
#' data <- data.frame(Power = c(10, 12, 8, 9), Time = c(0, 300, 600, 900))
#' kWhUsed(data) # Returns energy used based on mean power and session duration
#' }
#' @seealso duration
#' @export
kWhUsed <- function(csv) {
  # Total kWh used: kWh = mean power * time of session in hours
  kWhUsed <- mean(csv$Power) * (duration(csv) / 60)
  return(kWhUsed)
}
