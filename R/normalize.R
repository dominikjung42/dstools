#' Use this function to normalize your data to a specific range
#'
#' Normalize your data
#'
#' @param x A vector with numeric values
#'
#' @return A vector with min-max normalized values
#' @export
#'
#' @examples
#' data(whisky_collection)
#' whisky_collection$RATING <- normalize(whisky_collection$RATING)
normalize <- function(x) {
  df <- as.numeric((x - min(x, na.rm = TRUE))/(max(x, na.rm = TRUE) - min(x, na.rm = TRUE)))
    return(df)
}
