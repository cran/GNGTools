% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.ss.ng.trt.int.oc.df.r
\name{get.ss.ng.trt.int.oc.df}
\alias{get.ss.ng.trt.int.oc.df}
\title{Get single sample normal-gamma interim operating characteristic data.frame}
\usage{
get.ss.ng.trt.int.oc.df(
  mu.0.t = 0,
  n.0.t = 1e-04,
  alpha.0.t = 0.25,
  beta.0.t = 1,
  Delta.lrv = 1.25,
  Delta.tv = 1.75,
  Delta.OC.LB = -5,
  Delta.OC.UB = 5,
  npoints = 10,
  n.MC = 1000,
  s.t = 2,
  tau.tv = 0.1,
  tau.lrv = 0.8,
  tau.ng = 0.65,
  interim.n.t = c(10, 20, 30),
  final.n.t = 40,
  go.thresh = 0.8,
  ng.thresh = 0.8,
  include_nogo = TRUE
)
}
\arguments{
\item{mu.0.t}{prior mean}

\item{n.0.t}{prior effective sample size}

\item{alpha.0.t}{prior alpha parameter}

\item{beta.0.t}{prior beta parameter}

\item{Delta.lrv}{TPP Lower Reference Value aka Min TPP}

\item{Delta.tv}{TPP Target Value aka Base TPP}

\item{Delta.OC.LB}{OC Lower bound}

\item{Delta.OC.UB}{OC Uppder bound}

\item{npoints}{number of points to span}

\item{n.MC}{number of trials at each point}

\item{s.t}{standard deviation}

\item{tau.tv}{threshold associated with Base TPP}

\item{tau.lrv}{threshold associated with Min TPP}

\item{tau.ng}{threshold associated with No-Go}

\item{interim.n.t}{interim sample sizes}

\item{final.n.t}{final sample size}

\item{go.thresh}{interim go threshold}

\item{ng.thresh}{interim no-go threshold}

\item{include_nogo}{logical}
}
\value{
A data.frame is returned.
}
\description{
Get single sample normal-gamma interim operating characteristic data.frame
}
\examples{
holdit <- get.ss.ng.trt.int.oc.df(n.MC=100, npoints=3)
head(holdit)
}
