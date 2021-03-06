% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_names.R
\name{make_names}
\alias{make_names}
\title{Updated version of Base-R's \code{make.names()} function.}
\usage{
make_names(df)
}
\arguments{
\item{df}{A dataframe}
}
\value{
A data-frame with well-formated column names
}
\description{
Makes R-compatible column names by removing spaces,
points and other uncommon characters from dataframe
column names and transform them to capital letters.
}
\examples{
cars_cleaned <- make_names(cars)
}
