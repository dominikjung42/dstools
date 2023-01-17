#' Dataset with a collection of popular whiskies
#'
#' Data about popular whiskies around the world with additional information
#'
#' @docType data
#'
#' @usage data(whisky_collection)
#'
#' @format A data.frame with 37 rows and 11 variables:
#' \describe{
#'   \item{Name}{Name of the whisky}
#'   \item{Distillery}{Distiller of the specific whisky}
#'   \item{Location}{Production location of the whisky (mostly countries or regions)}
#'   \item{Type}{Specification of the whisky type like e.g. single malt or blended}
#'   \item{Region}{Region of the whisky production (mostly relevant for scotchs)}
#'   \item{Foundation}{Year of the first whisky production}
#'   \item{Coordinates}{Longitude and latitude values of the destillery}
#'   \item{Wikipedia}{Link to the related article of the English Wikipedia}
#'   \item{Rating}{My personal rating of this whisky. I am open to discuss it, just write me an email if you see it otherwise}
#'   \item{Smokness}{My measure of how smoky vs. delicate it tastes, negative values implicate delicate}
#'   \item{Richness}{My measure of how rich vs. light it tastes, negative values implicate light}
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




