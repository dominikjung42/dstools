#' Dataset with a sample of the Junglivet production data
#'
#' A sample of the production data of the Junglivet whisky
#'
#' @docType data
#'
#' @usage data(productionlog_sample)
#'
#' @format A data.frame with 21 rows and 8 variables:
#' \describe{
#'   \item{DAY}{day of the production}
#'   \item{MONTH}{month of the production}
#'   \item{MANUFACTURER}{name of the leading brew master)}
#'   \item{PRODUCT}{product type like Junglivet or Junglivet premium}
#'   \item{SHIFT}{indicates morning or evening shift)}
#'   \item{COLOR}{color indicator on a scale between 0 and 1}
#'   \item{MALTING}{origin of the used malting products}
#'   \item{TASTING}{quality indicator based on a whisky tasting}
#' }

#' @keywords datasets
#'
#' @examples
#' data(productionlog_sample)
#' \donttest{
#' library("ggplot2")
#' ggplot(productionlog_sample, aes(x=MANUFACTURER, y=TASTING, fill=TASTING)) +
#' geom_bar(stat="identity") +
#' coord_flip() +
#' xlab("")
#' }
"productionlog_sample"
