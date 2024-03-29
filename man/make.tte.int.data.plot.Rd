% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make.tte.int.data.plot.r
\name{make.tte.int.data.plot}
\alias{make.tte.int.data.plot}
\title{Make time to event predictive probability cutoff plot}
\usage{
make.tte.int.data.plot(
  my.table = make.tte.int.data.table(),
  include_nogo = FALSE
)
}
\arguments{
\item{my.table}{output from make.tte.int.data.table}

\item{include_nogo}{logical}
}
\value{
A ggplot object is returned
}
\description{
Make time to event predictive probability cutoff plot
}
\examples{
my.tte.int.data.table <- make.tte.int.data.table()
my.tte.int.data.plot <- make.tte.int.data.plot(my.table = my.tte.int.data.table)
my.tte.int.data.plot
}
