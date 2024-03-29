% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make.ts.ng.int.oc.r
\name{make.ts.ng.int.oc}
\alias{make.ts.ng.int.oc}
\title{Make two-sample normal-gamma interim OC plot}
\usage{
make.ts.ng.int.oc(
  for.plot = get.ts.ng.trt.int.oc.df(go.parallel = FALSE, include_nogo = TRUE),
  nlines = 25,
  tsize = 6,
  include_nogo = TRUE
)
}
\arguments{
\item{for.plot}{call to get.ts.ng.trt.int.oc.df}

\item{nlines}{number of lines}

\item{tsize}{text size}

\item{include_nogo}{logical}
}
\value{
A ggplot object is returned
}
\description{
Make two-sample normal-gamma interim OC plot
}
\examples{
\donttest{
my.ts.ng.trt.int.oc.df <- get.ts.ng.trt.int.oc.df(npointsLookup = 2, npoints=3, n.MC.lookup=5,
n.MC=5, go.parallel=FALSE)
make.ts.ng.int.oc(for.plot = my.ts.ng.trt.int.oc.df)
}
}
