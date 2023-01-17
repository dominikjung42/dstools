#' Updated version of Base-R's \code{make.names()} function.
#'
#' Makes R-compatible column names by removing spaces,
#' points and other uncommon characters from dataframe
#' column names and unifies their typography.
#'
#' @param df A data.frame
#' @param typo Specify the column names typography. Use 'capital'
#' for capital letters and 'small' to transform your column names
#' into small letters.
#'
#' @return A data.frame with well-formated column names
#' @export
#'
#' @examples
#' cars_cleaned <- make_names(cars)
#' head(cars)
make_names <- function(df = NULL, typo = c("capital", "small")) {
  input_is_dataframe <- is.data.frame(df)
  if (!input_is_dataframe) {
    stop("'df' must be of type data.frame()")
  }

  new_col_names <- names(df)

  # replace blanks and point separators
  new_col_names <- gsub(pattern = "\\s+|\\.", replacement = "_", x = new_col_names)

  # replace multiple underscores with single underscore
  new_col_names <- gsub(pattern = "\\_+", replacement = "_", x = new_col_names)

  # remove starting and ending underscores
  new_col_names <- gsub(pattern = "^_", replacement = "", x = new_col_names)
  new_col_names <- gsub(pattern = "_$", replacement = "", x = new_col_names)

  # replace empty columnnames with placeholder
  new_col_names <- gsub(pattern = "^$", replacement = "X", x = new_col_names)

  # remove starting numbers
  new_col_names <- gsub(pattern = "^\\d+", replacement = "X", x = new_col_names)

  # unifies column names
  new_col_names <- make.unique(new_col_names, sep = "")

  typo <- match.arg(typo)
  if (typo == "small") {
    new_col_names <- gsub(pattern = "([A-Z])", replacement = "\\L\\1", perl = TRUE, x = new_col_names)
  }
  else {
    new_col_names <- gsub(pattern = "([a-z])", replacement = "\\U\\1", perl = TRUE, x = new_col_names)
  }

  names(df) <- new_col_names
  return(df)
}
