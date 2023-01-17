#' List the available palettes in the palette collection
#'
#' This command lists you all the available color palettes in the dstools color
#' palette collection. The collection consists of a large collection of famous
#' colour palettes from popular brands and topics. This allows
#' you easily to adjust your \code{ggplot} to your design.
#'
#' @return list of colour palettes
#' @export
#'
#' @examples
#' list_pals()
list_pals <- function(){
  pals <- colour_palettes_collection
  return(names(pals))
}
