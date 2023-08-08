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
#' @format A data.frame with 100 rows and 12 variables:
#' \describe{
#'   \item{DATE}{Age of the user at time of visiting the website}
#'   \item{USER_ID}{Unique identifier for the onlineshop user}
#'   \item{AGE}{Timestamp indicating date of login to onlineshop}
#'   \item{GENDER}{Gender of the user}
#'   \item{TYPE}{Internal customer type based on phone interviews (1: Standard Customer, 2: Whisky Connoisseur, NA: no phone interview)}
#'   \item{CREDIT_SCORE}{External scoring of the financial solvency of the customer from 1 (very bad) to 5 (excellent)}
#'   \item{LIFETIME}{Lifetime of the account of the customers in years after initial registration}
#'   \item{PAYMENT_METHOD}{Payment method of the customer like 'BNPL' (Buy now, pay later), 'credit card', 'bank transfer' or 'paypal'}
#'   \item{TURNOVER}{Turnover of the current purchase in EUR}
#'   \item{SENDBACK}{Dummy to flag if parts of the purchase was returned within 2 weeks. 1 or TRUE means that it has been send back by the user}
#'   \item{VIDEO_AD}{Dummy to indicate the type of daily commercial on the landingpage. While 1 or TRUE indicates that the user had a video commercial, 0 or FALSE indicate otherwise like a text prompt or article}
#'   \item{CONVERTED}{Dummy to indicate that the user put the whisky or merchandise from the daily commercial in the shopping basket}
#' }
#'
#' @keywords datasets
#'
#' @examples
#' data(onlineshop)
#' \donttest{
#' library("ggplot2")
#' ggplot(onlineshop, aes(x=AGE, y=TURNOVER, fill=GENDER)) +
#' geom_point()
#' }
"onlineshop"
