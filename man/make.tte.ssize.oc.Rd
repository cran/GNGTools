% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make.tte.ssize.oc.r
\name{make.tte.ssize.oc}
\alias{make.tte.ssize.oc}
\title{Make time-to-event sample size OC curve}
\usage{
make.tte.ssize.oc(
  for.plot = get.tte.ssize.oc.df(),
  tsize = 4,
  nlines = 25,
  add.table = TRUE
)
}
\arguments{
\item{for.plot}{output from get.tte.ssize.oc.df}

\item{tsize}{Control for text size}

\item{nlines}{Control for text spacing}

\item{add.table}{provide GNG Rule tables and extensive output}
}
\value{
A ggplot object is returned
}
\description{
Make time-to-event sample size OC curve
}
\examples{
\donttest{
my.tte.ssize.oc.df <- get.tte.ssize.oc.df()
make.tte.ssize.oc(for.plot = my.tte.ssize.oc.df)
}
}
