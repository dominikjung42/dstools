#' Wrapper for different \code{read functions}.
#'
#' Reads all files in a specific directory into your
#' environment and binds them into a data.frame.
#'
#' @param dir Path to the directory of files
#' @param type Choose filetype (e.g. xlsx) that should be read
#' @param pattern Specify a word or name to read only
#' files with this specific word in the filename and in the directory
#'
#' @return A data.frame consisting of all related files
#' @export
#'
#' @examples
#' \dontrun{data_all <- read_dir(dir = C:/users/Username/data, type = "xlsx")}
#' \dontrun{data_all <- read_dir(dir = C:/logs, pattern = "logs", type = "xlsx")}

read_dir <- function(dir = NULL, pattern = NULL, type = c("xlsx")){
  path_exists <- dir.exists(dir)
  if (!path_exists) {
    stop("Your path does not exist")
  }

  filenames <- list.files(dir, pattern=paste0("*.", type), full.names=TRUE, recursive = T)
  if(!is.null(pattern)){
    filenames <- filenames[grepl(pattern, filenames)]
  }

  type <- match.arg(type)
  if (type == "xlsx") {
    read_all <- function(file_name){
      readxl::read_excel(file_name) %>%
        dplyr::mutate(file_name = file_name)
    }
  }

  df <- filenames %>%
    purrr::map_df(~read_all(.))

  return(df)
}
