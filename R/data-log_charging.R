#' log_charging Dataset
#'
#' A dataset containing an OBD2 log output of a DC fast charging session, used
#' to create charging curve.
#'
#' @format A data frame with 5743 rows and 5 variables:
#' \describe{
#'   \item{Time}{Time since log start in seconds}
#'   \item{Power}{Instantaneous reading of power used in kilowatts}
#'   \item{coolantTemp}{Battery coolant temperature in Fahrenheit}
#'   \item{SoC}{Battery state of charge reported from the vehicle as a percent}
#'   \item{avgModuleTemp}{Average temperature of battery modules in Fahrenheit}
#' }
#' @source Collected from EV analysis project
"log_charging"
