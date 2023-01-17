#' Returns one or n random elements of your list or dataset
#'
#' This function allows you to choose easily random elements of your dataset.
#'
#' @param x dataset (array or data frame) where to choose from
#' @param n number of choices (sample size)
#' @param replace sample with replacement or not. Default is FALSE.
#'
#' @return
#' @export
#'
#' @examples
#' # Choose a random number between 1 and 3
#' choose(c(1,2,3))
choose <- function(x=NULL, n=1, replace=FALSE){
  switch(class(x),
         numeric={
           sample = .choose_from_list(x, n, replace)
         },
         character={
           sample = .choose_from_list(x, n, replace)
         },
         data.frame={
           sample = .choose_from_df(x, n, replace)
         },
         stop("Error: Datatype of your input data is not supported!")
  )
  return(sample)
}


#' Internal function - Sampels lists
#'
#' @param x list to be sampled
#' @param n sample size
#' @param replace sample with replacement or not
#'
#' @return
#' @keywords internal
.choose_from_list <- function(x=x, n=n, replace=replace){
  if (n > length(x)) {
    stop("Error: Your samplesize is larger than your array. Try to run with replace == TRUE?")
  }

  sample <- sample(x=x, size=n, replace=replace)

  return(sample)
}

#' Internal function - Samples data frames
#'
#' @param x data frame to be sampled
#' @param n sample size
#' @param replace sample with replacement or not
#'
#' @return
#' @keywords internal
.choose_from_df <- function(x=x, n=n, replace=replace){
  if (n > nrow(x)) {
    stop("Error: Your samplesize is larger than your data frame. Try to run with replace == TRUE?")
  }

  sample <- x[sample(x=nrow(x), size=n, replace=replace),]

  return(sample)
}
