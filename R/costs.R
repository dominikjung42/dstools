#' Dataset with the Junglivet production costs
#'
#' The dataset consists of the production costs of the Junglivet Whisky Company
#' from January 2015 to June 2022.
#'
#' @docType data
#'
#' @usage data(costs)
#'
#' @format A data.frame with 90 rows and 5 variables:
#' \describe{
#'   \item{ID}{Unique identifier of the production costs}
#'   \item{YEAR}{Year of the costs entry}
#'   \item{MONTH}{Month of the costs entry}
#'   \item{DAY}{Day of the month of the costs entry}
#'   \item{COSTS}{Production costs in Euro of the Junglivet Whisky Company}
#'  }
#'
#' @keywords datasets
#'
#' @examples
#' data(costs)
#' \donttest{
#' library("ggplot2")
#' ggplot(costs, aes(x=YEAR, y=COSTS)) +
#' geom_bar(stat="identity")
#' }
"costs"
