#' Updated version of Base-R's \code{make.names()} function.
#'
#' Makes R-compatible column names by removing spaces,
#' points and other uncommon characters from dataframe
#' column names and transform them to capital letters.
#'
#' @param df A dataframe
#'
#' @return A data-frame with well-formated column names
#' @export
#'
#' @examples
#' cars_cleaned <- make_names(cars)

make_names <- function(df){
  names(df) = make.names(names(df))
  df = df %>%
    dplyr::select_all(~gsub("\\s+|\\.", "_", .)) %>%
    dplyr::select_all(toupper)
  return(df)
}
