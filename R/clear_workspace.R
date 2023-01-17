#' Clear your current workspace
#'
#' \code{clear_workspace} resets your R-environment without de-attaching
#' your packages. It just removes your variables and functions.
#'
#' @export
#'
#' @examples
#' # make some new variables in your environment, then clear your whole environment
#' \dontrun{
#' > var <- 1
#' > name <- c("Bob")
#' > ls()
#' "var"     "name"
#' > clear_workspace()
#' > ls()
#' character(0)
#'}
clear_workspace <- function(){
  rm(list=ls(envir = .GlobalEnv), envir = .GlobalEnv)
}
