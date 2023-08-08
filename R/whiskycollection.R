#' Dataset with a collection of popular whiskies
#'
#' A small but fine collection of about 40 outstanding and award-winning
#' whiskies from around the world. In addition, it contains further information
#' about the distillery, the place of production and the results of my personal
#' but also professional whisky tasting.
#'
#' @docType data
#'
#' @usage data(whisky_collection)
#'
#' @format A data.frame with 40 rows and 14 variables:
#' \describe{
#'   \item{NAME}{Name of the whisky}
#'   \item{DISTILLERY}{Distiller of the specific whisky}
#'   \item{LOCATION}{Production location of the whisky (mostly countries or regions)}
#'   \item{TYPE}{Specification of the whisky type like e.g. single malt or blended}
#'   \item{REGION}{Region of the whisky production (mostly relevant for scotchs)}
#'   \item{FOUNDATION}{Year of the first whisky production}
#'   \item{COORDINATES}{Longitude and latitude values of the distillery}
#'   \item{WIKIPEDIA}{Link to the related article of the English Wikipedia}
#'   \item{RATING}{My personal rating of this whisky. I am open to discuss it, just write me an email if you see it otherwise ;-)}
#'   \item{REVIEWS}{The average rating of this whisky based on consumer reviews from many whisky online shops in 2023}
#'   \item{CRITIQUES}{The average rating of this whisky based on reviews from professional critics until 2023}
#'   \item{SMOKENESS}{My measure of how smoky vs. delicate it tastes, negative values implicate delicate}
#'   \item{RICHNESS}{My measure of how rich vs. light it tastes, negative values implicate light}
#'   \item{PRICE}{The average price level in Euro of the youngest 10/12 year or consumer version in the whiskyexchange 2023}
#' }
#'
#' @keywords datasets
#'
#' @examples
#' data(whisky_collection)
#' \donttest{
#' library("ggplot2")
#' ggplot(whisky_collection, aes(x=NAME, y=RATING, fill=RATING)) +
#' geom_bar(stat="identity") +
#' coord_flip() +
#' xlab("")
#' }
"whisky_collection"




