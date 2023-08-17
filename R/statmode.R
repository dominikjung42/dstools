#' Use this function to compute the statistical mode of a dataset
#'
#' Compute the mode
#'
#' @param x A vector with numeric or character values
#' @param na.rm Specify if NA should be removed
#'
#' @return A value with the statistical mode
#' @export
#'
#' @examples
#' data(whisky_collection)
#' statmode(whisky_collection$RATING)

statmode <- function(x, na.rm = FALSE) {

  #remove NA values from input x if na.rm is TRUE
  if(na.rm){
    x = x[!is.na(x)]
  }

  val <- unique(x)
  val <- val[which.max(tabulate(match(x, val)))]

  return(val)
}
