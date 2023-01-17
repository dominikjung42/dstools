#' Large collection of colour palettes for your ggplots
#'
#' Choose a colour palette out of a huge collection of famous
#' colour palettes from popular brands and topics. This allows
#' you easily to adjust your \code{ggplot} to your design.
#'
#'@details
#' Selection of possible available brands and topics:
#' \itemize{
#'  \item{\code{airfrance}}{: Air France colour palette}
#'  \item{\code{fivethirtyeight}}{: Colour palette of the analytics blog 538}
#'  \item{\code{porsche}}{: Porsche colour palette}
#'  \item{\code{porsche_black}}{: Porsche colour palette in grey}
#'  \item{\code{...}}
#' }
#' Take a look at the online documentation for a complete overview
#' of colour palettes or run \code{list_pals()}.
#'
#' @param name Name of the brand or topic you want as colour palette
#' @param n Number of colors that should be used. If empty, all colours of the
#' palette are selected
#' @param type Can be either "continuous" or "discrete". You can use "continous"
#' if you want to automatically interpolate between the palette's colours.
#'
#' @return A vector with hexcodes to use in \code{ggplot} etc.
#' @export
#'
#' @examples
#' library("ggplot2")
#' ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +
#' geom_bar() +
#' scale_fill_manual(values = use_pal(name="porsche"))
#'
#' #List all available colour palettes
#' list_pals()
use_pal <- function(name=NULL, n=NULL, type = c("discrete", "continuous")){
  if(is.null(name)){
    stop("Please specify a colourpalette, e.g. use_pal(name='porsche'). See the
         documentation for a full list of the available colourpalettes.")
  }
  if(!name %in% names(colour_palettes_collection)){
    stop("Your colourplaette does not exist. Check for spelling mistakes or take
         a look at the documentation for a full list of available palettes.")
  }
  pal <- colour_palettes_collection[[name]]

  if (missing(n)) {
    n <- length(pal)
  }

  type <- match.arg(type)
  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than the available colours of the palette")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}


