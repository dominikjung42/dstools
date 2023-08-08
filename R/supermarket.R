#' Dataset with a transaction data for association  analysis from a local supermarket
#'
#' Transaction logs of a Scottish supermarket including Junglivet whisky sales
#' based on the dataset from Michael Hahsler et al. (2006).
#'
#' Source: Michael Hahsler, Kurt Hornik, and Thomas Reutterer (2006)
#' Implications of probabilistic data modeling for mining association rules.
#' In M. Spiliopoulou, R. Kruse, C. Borgelt, A. Nuernberger, and W. Gaul,
#' editors, From Data and Information Analysis to Knowledge Engineering,
#' Studies in Classification, Data Analysis, and Knowledge Organization,
#' pages 598–605. Springer-Verlag.
#'
#' @docType data
#'
#' @usage data(supermarket)
#'
#' @format A transaction set with 9835 transactions aggregated to 170 categories:
#' \describe{
#'   \item{item}{name of the item in the transaction}
#'  }
#'
#' @keywords datasets
#'
#' @examples
#' data(supermarket)
#' \donttest{
#' summary(supermarket)
#' }
"supermarket"
