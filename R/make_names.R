#' Updated version of Base-R's \code{make.names()} function.
#'
#' Makes R-compatible column names by removing spaces,
#' points and other uncommon characters from dataframe
#' column names and unifies their typography.
#'
#' @param df A dataframe
#' @param typo Specify the column names typography. Use 'capital'
#' for capital letters and 'small' to transform your column names
#' into small letters.
#'
#' @return A dataframe with well-formated column names
#' @export
#'
#' @examples
#' cars_cleaned <- make_names(cars)
make_names <- function(df = NULL, typo = c("capital", "small")) {
  input_is_dataframe <- is.data.frame(df)
  if (!input_is_dataframe) {
    stop("'df' must be of type data.frame()")
  }

  messy_col_names <- names(df)
  # Replace blanks and point separators
  messy_col_names <- gsub(pattern = "\\s+|\\.", replacement = "_", x = messy_col_names)
  # Replace multiple underscores with single underscore
  messy_col_names <- gsub(pattern = "\\_+", replacement = "_", x = messy_col_names)
  # Remove starting and ending underscores
  messy_col_names <- gsub(pattern = "^_", replacement = "", x = messy_col_names)
  messy_col_names <- gsub(pattern = "_$", replacement = "", x = messy_col_names)
  # Replace empty columnnames with placeholder
  messy_col_names <- gsub(pattern = "^$", replacement = "X", x = messy_col_names)
  # Unifies column names
  messy_col_names <- make.unique(messy_col_names, sep="")

  typo <- match.arg(typo)
  if (typo == "small") {
    messy_col_names <- gsub(pattern = "([A-Z])", replacement = "\\L\\1", perl=TRUE, x = messy_col_names)
  }
  else {
    messy_col_names <- gsub(pattern = "([a-z])", replacement = "\\U\\1", perl=TRUE, x = messy_col_names)
  }

  names(df) <- messy_col_names
  return(df)
}






