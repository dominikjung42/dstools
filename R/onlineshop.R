#' Dataset with a transaction log sample from the Junglivet onlineshop
#'
#' Transaction logs of the Junglivet whisky onlineshop containing information
#' about page visits and buys. It can be used to investigate the behaviour in
#' the shop as well to make A/B tests.
#'
#' @docType data
#'
#' @usage data(onlineshop)
#'
#' @format A data.frame with xxxxx rows and xxxxx variables:
#' \describe{
#'   \item{USER_ID}{Unique identifier for the onlineshop user}
#'   \item{AGE}{Timestamp indicating date of login to onlineshop}
#'   \item{GENDER}{Gender of the user}
#'   \item{TYPE}{Internal user type (1: Premium user, 2: Standard Customer)}
#'   \item{CREDIT_SCORE}{External scoring of the financial solvency of the customer from 1 (very bad) to 5 (excellent)}
#'   \item{PAYMENT_METHOD}{Payment method of the customer like credit card or Paypal}
#'   \item{DATE}{Age of the user at time of visiting website}
#'   \item{LAST_BUY}{Turnover of the last purchase in the last 3 months}
#'   \item{TURNOVER}{Turnover of the current purchase in EUR}
#'   \item{SENDBACK}{Dummy to flag if the purchase was returned within 2 weeks}
#'   \item{ADVERTISEMENT}{Dummy to flag if the commercial on the landing page had a video trailer or not}
#'   \item{CLICKED_ADVERTISEMENT}{Dummy to indicate that the user engaged with the daily commercial on the landingpage. Whike 1 indicates that the user clicked on the commercial}
#'   \item{CONVERTED}{Dummy to indicate if the user put the whisky or merchandise from the daily commercial or not in the shopping basket after seeing the commercial on the landingpage}
#' }
#'
#' @keywords datasets
#'
#' @examples
#' data(whisky_collection)
#' \donttest{
#' library("ggplot2")
#' ggplot(whisky_collection, aes(x=Name, y=Rating, fill=Rating)) +
#' geom_bar(stat="identity") +
#' coord_flip() +
#' xlab("")
#' }
"whisky_collection"
