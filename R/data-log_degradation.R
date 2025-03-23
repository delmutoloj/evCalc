#' log_degradation Dataset
#'
#' A dataset containing an OBD2 log output of a full battery discharge, used
#' for calculating battery degradation.
#'
#' @format A data frame with 19293 rows and 5 variables:
#' \describe{
#'   \item{Time}{Time since log start in seconds}
#'   \item{Speed}{Vehicle speed in miles per hour}
#'   \item{Distance}{Distance traveled since log start in miles}
#'   \item{Power}{Instantaneous reading of power used in kilowatts}
#'   \item{SoC}{Battery state of charge reported from the vehicle as a percent}
#' }
#' @source Collected from EV analysis project
"log_degradation"
