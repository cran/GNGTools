% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/list_to_dataframe.r
\name{list_to_dataframe}
\alias{list_to_dataframe}
\title{List to data frame from plyr}
\usage{
list_to_dataframe(res, labels = NULL, id_name = NULL, id_as_factor = FALSE)
}
\arguments{
\item{res}{list of input data}

\item{labels}{a data frame of labels, one row for each element of res}

\item{id_name}{the name of the index column, NULL for no index column}

\item{id_as_factor}{Logical}
}
\value{
A list is converted to a data.frame
}
\description{
List to data frame from plyr
}
