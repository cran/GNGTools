% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.ts.ng.studyend.GNG.r
\name{get.ts.ng.studyend.GNG}
\alias{get.ts.ng.studyend.GNG}
\title{Get two-sample normal gamma study end GNG}
\usage{
get.ts.ng.studyend.GNG(
  mu.0.c = 0,
  alpha.0.c = 0.25,
  beta.0.c = 1,
  n.0.c = 1,
  mu.0.t = 0,
  alpha.0.t = 0.25,
  beta.0.t = 1,
  n.0.t = 1,
  xbar.c = 1.5,
  s.c = 4,
  n.c = 40,
  xbar.t = 26,
  s.t = 4,
  n.t = 40,
  Delta.lrv = 1,
  Delta.tv = 1.5,
  tau.ng = 0.65,
  tau.lrv = 0.8,
  tau.tv = 0.1,
  n.MC = 1000
)
}
\arguments{
\item{mu.0.c}{prior mean for control group}

\item{alpha.0.c}{prior alpha parameter for control group}

\item{beta.0.c}{prior beta parameter for control group}

\item{n.0.c}{prior effective sample size for control group}

\item{mu.0.t}{prior mean for treatment group}

\item{alpha.0.t}{prior alpha parameter for treatment group}

\item{beta.0.t}{prior beta parameter for treatment group}

\item{n.0.t}{prior effective sample size for treatment group}

\item{xbar.c}{sample mean for control group}

\item{s.c}{sample sd for control group}

\item{n.c}{sample size for control group}

\item{xbar.t}{sample mean for treatment group}

\item{s.t}{sample sd for treatment group}

\item{n.t}{sample size of treatment group}

\item{Delta.lrv}{Min TPP}

\item{Delta.tv}{Base TPP}

\item{tau.ng}{threshold associated with No-Go}

\item{tau.lrv}{threshold associated with Min TPP}

\item{tau.tv}{threshold associated with Base TPP}

\item{n.MC}{n for MC sampling}
}
\value{
A list is returned holding what is needed of data to achieve Go/No-Go
}
\description{
Get two-sample normal gamma study end GNG
}
\examples{
my.ts.ng.studyend.GNG <- get.ts.ng.studyend.GNG()
my.ts.ng.studyend.GNG
}
\author{
Greg Cicconetti
}
