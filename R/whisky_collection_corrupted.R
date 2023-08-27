#' Dataset with a corrupted version of the whisky_Collection dataset for educational issues
#'
#' This dataset is a corrupted version of the whisky_collection dataset of this
#' package. It contains the most common data quality problems like missing data
#' or errors, the columns and structures are not unified, there are outliers or
#' values that will break your prediction model and other pitfalls for educational
#' issues.
#'
#' @docType data
#'
#' @usage data(whisky_collection_corrupted)
#'
#' @format A data.frame with 42 rows and 15 variables:
#' \describe{
#'   \item{NAME}{Name of the whisky}
#'   \item{distillery}{Distiller of the specific whisky}
#'   \item{LOCATION}{Production location of the whisky (mostly countries or regions)}
#'   \item{TYPE}{Specification of the whisky type like e.g. single malt or blended}
#'   \item{REGION}{Region of the whisky production (mostly relevant for scotchs)}
#'   \item{FOUNDATION}{Year of the first whisky production}
#'   \item{COORDINATES}{Latitude and longitude values of the distillery}
#'   \item{WIKIPEDIA}{Link to the related article of the English Wikipedia}
#'   \item{RATING}{My personal rating of this whisky. I am open to discuss it, just write me an email if you see it otherwise ;-)}
#'   \item{REVIEWS}{The average rating of this whisky based on consumer reviews from many whisky online shops in 2023}
#'   \item{CRITIQUES}{The average rating of this whisky based on reviews from professional critics until 2023}
#'   \item{SMOKENESS}{My measure of how smoky vs. delicate it tastes, negative values implicate delicate}
#'   \item{RICHNESS}{My measure of how rich vs. light it tastes, negative values implicate light}
#'   \item{PRICE}{The average price level in Euro of the youngest 10/12 year or consumer version in the whiskyexchange 2023}
#'   \item{origin}{Alternative feature to LOCATION, contains location of the whisky (mostly countries or regions)}
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
"whisky_collection_corrupted"
