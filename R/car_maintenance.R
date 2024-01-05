#' A sample of vehicle analysis protocols
#'
#' A dataset that contains information about car usage and technical data for predicitve maintenance
#'
#' @docType data
#'
#' @usage data(car_maintenance)
#'
#' @format A data.frame with 32 rows and 6 variables:
#' \describe{
#'   \item{PART_1023}{Number of warnings in the log file that are related to the part id 1023}
#'   \item{PART_99}{Number of warnings in the log file that are related to the part id 99}
#'   \item{PART_02}{Number of warnings in the log file that are related to the part id 02}
#'   \item{OIL}{Oil volume at last check‘s day}
#'   \item{CHECK_STATUS}{Resultofthelast checkup (unacc: unaccepted, acc: accepted, good: good, vgood: very good)}
#'   \item{FOLLOW_UP}{Dummy indicating if the car had a follow-up check or not. 'yes' means that the first repair could not fix the issue and customer returned with the same problem.}
#' }

#' @keywords datasets
#'
#' @examples
#' data(car_maintenance)
#' \donttest{
#' library("ggplot2")
#' ggplot(car_maintenance, aes(factor(FOLLOW_UP))) +
#' geom_bar()
#' }
"car_maintenance"
