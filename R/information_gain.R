#' Computes information gain based on Shannon and Weaver's entropy
#'
#' Computes information gain based on standard entropy.
#'
#' @param data Data frame for information gain computation
#' @param feature Selected input feature
#' @param target Selected target feature
#' @param bins Number of bins to handle numeric features
#'
#' @return information gain value
#' @export
#'
#' @examples
#' information_gain(whisky_collection, "RATING", "PRICE", bins=5)
information_gain <- function(data, feature, target, bins=4) {
  #Strip out rows where feature is NA
  data<-data[!is.na(data[,feature]),]
  #compute entropy for the parent
  e0<-entropy(data[,target])

  data$cat<-cut(data[,feature], breaks=bins, labels=c(1:bins))

  #use dplyr to compute e and p for each value of the feature
  dd_data <- data %>% dplyr::group_by(cat) %>% dplyr::summarize(e=entropy(get(target)),
                                                                n=length(get(target)),
                                                                min=min(get(feature)),
                                                                max=max(get(feature))
  )

  #calculate p for each value of feature
  dd_data$p<-dd_data$n/nrow(data)
  #compute IG
  IG<-e0-sum(dd_data$p*dd_data$e)

  return(IG)
}


