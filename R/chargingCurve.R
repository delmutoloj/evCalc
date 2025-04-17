#' Generate a Charging Curve
#'
#' This function uses ggplot2 to create a charging curve using an OBD log of
#' a DC fast charging session. (x: Time, y: Power (kW))
#'
#' @param csv A data frame containing a log output recorded while DC fast
#' charging the vehicle.
#' @return A line plot of charging power (kW) over time.
#' @examples
#' \dontrun{
#' plot <- chargingCurve(evCalc::log_charging)
#' }
#' @import ggplot2
#' @export
chargingCurve <- function(csv) {
  Power <- Time <- NULL
  csv$Power <- abs(csv$Power)
  g1 <- ggplot2::ggplot(csv, ggplot2::aes(x = Time, y = Power)) +
    ggplot2::geom_line()
  return(g1)
}
