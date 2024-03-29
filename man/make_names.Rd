% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_names.R
\name{make_names}
\alias{make_names}
\title{Updated version of Base-R's \code{make.names()} function.}
\usage{
make_names(df = NULL, typo = c("capital", "small"))
}
\arguments{
\item{df}{A data.frame}

\item{typo}{Specify the column names typography. Use 'capital'
for capital letters and 'small' to transform your column names
into small letters.}
}
\value{
A data.frame with well-formated column names
}
\description{
Makes R-compatible column names by removing spaces,
points and other uncommon characters from dataframe
column names and unifies their typography.
}
\examples{
cars_cleaned <- make_names(cars)
head(cars)
}
