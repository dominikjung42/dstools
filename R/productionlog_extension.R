#' Dataset with information to extend the Junglivet production sample data
#'
#' A sample of further information of the production data of the Junglivet whisky
#'
#' @docType data
#'
#' @usage data(productionlog_extension)
#'
#' @format A data.frame with 18 rows and 6 variables:
#' \describe{
#'   \item{DAY}{day of the production}
#'   \item{MONTH}{month of the production}
#'   \item{DAYTIME}{indicates which shift has been produced the log (morning or evening))}
#'   \item{OFF-FLAVORS}{indicates unusual or unpleasant flavors and aromas during production}
#'   \item{CLOUDINESS}{suggest issues with filtration or improper blending}
#'   \item{ALCOHOL}{if the alcohol content by volume is significantly different than expected}
#' }

#' @keywords datasets
#'
#' @examples
#' data(productionlog_extension)
#' \donttest{
#' library("ggplot2")
#' ggplot(productionlog_extension, aes(x=DAY, y=ALCOHOL, fill=DAYTIME)) +
#' geom_bar(stat="identity") +
#' coord_flip() +
#' xlab("")
#' }
"productionlog_extension"
