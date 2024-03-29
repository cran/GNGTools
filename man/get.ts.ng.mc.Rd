% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.ts.ng.mc.r
\name{get.ts.ng.mc}
\alias{get.ts.ng.mc}
\title{Get two-sample normal gamma MC sampling}
\usage{
get.ts.ng.mc(
  mu.0.c = 0,
  n.0.c = 1e-04,
  alpha.0.c = 0.25,
  beta.0.c = 1,
  xbar.c = 0,
  s.c = 2.3,
  n.c = 20000,
  group.c = "Control",
  mu.0.t = 1.5,
  n.0.t = 1e-04,
  alpha.0.t = 0.25,
  beta.0.t = 1,
  xbar.t = 1.5,
  s.t = 2.3,
  n.t = 20000,
  group.t = "Treatment",
  Delta.tv = 1.5,
  Delta.lrv = 1,
  tau.tv = 0,
  tau.lrv = 0.8,
  tau.ng = 0.75,
  seed = 1234,
  n.MC = 5000
)
}
\arguments{
\item{mu.0.c}{prior mean for control group}

\item{n.0.c}{prior effective sample size for control group}

\item{alpha.0.c}{prior alpha parameter for control group}

\item{beta.0.c}{prior beta parameter for control group}

\item{xbar.c}{sample mean for control group}

\item{s.c}{sample sd for control group}

\item{n.c}{sample size for control group}

\item{group.c}{group label for control group}

\item{mu.0.t}{prior mean for treatment group}

\item{n.0.t}{prior effective sample size for treatment group}

\item{alpha.0.t}{prior alpha parameter for treatment group}

\item{beta.0.t}{prior beta parameter for treatment group}

\item{xbar.t}{sample mean for treatment group}

\item{s.t}{sample sd for treatment group}

\item{n.t}{sample size for treatment group}

\item{group.t}{group label for treatment group}

\item{Delta.tv}{TPP Target Value aka Base TPP}

\item{Delta.lrv}{TPP Lower Reference Value aka Min TPP}

\item{tau.tv}{threshold associated with Base TPP}

\item{tau.lrv}{threshold associated with Min TPP}

\item{tau.ng}{threshold associated with No-Go}

\item{seed}{random seed}

\item{n.MC}{n for MC sampling}
}
\value{
A data.frame is returned
}
\description{
Get two-sample normal gamma MC sampling
}
\examples{
my.ts.ng.mc <- get.ts.ng.mc()
my.ts.ng.mc
}
