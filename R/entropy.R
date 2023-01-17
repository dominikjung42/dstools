#' Computes Shannon and Weaver's entropy
#'
#' Computes standard and normalized entropy based on Shannon and
#' Weavers' mathematical theory of communication (1948).
#'
#' @param x A vector for entropy computation
#' @param normalize Default is FALSE. Set \code{TRUE} to get normalized entropy.
#'
#' @return entropy value
#' @export
#'
#' @examples
#' entropy(x = c(0,0,1,1))
#' entropy(x = c(0,0,0,0))
entropy <- function(x = NULL, normalize = FALSE) {
  frequencies <- table(x) / length(x)
  vals <- as.data.frame(frequencies)[, 2]
  vals <- vals[vals > 0]
  if (normalize == TRUE) {
    entropy <- -sum((vals * log2(vals)) / log2(length(vals)))
    if(is.nan(entropy)){
      entropy <- 0
    }
  }
  else {
    entropy <- -sum(vals * log2(vals))
  }
  return(entropy)
}
