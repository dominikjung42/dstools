% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clear_workspace.R
\name{clear_workspace}
\alias{clear_workspace}
\title{Clear your current workspace}
\usage{
clear_workspace()
}
\description{
\code{clear_workspace} resets your R-environment without de-attaching
your packages. It just removes your variables and functions.
}
\examples{
# make some new variables in your environment, then clear your whole environment
\dontrun{
> var <- 1
> name <- c("Bob")
> ls()
"var"     "name"
> clear_workspace()
> ls()
character(0)
}
}
