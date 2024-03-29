% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.ss.ng.df.r
\name{get.ss.ng.df}
\alias{get.ss.ng.df}
\title{Get single sample normal-gamma data.frame with decision output}
\usage{
get.ss.ng.df(
  mu.0.t = 0,
  n.0.t = 10,
  alpha.0.t = 0.25,
  beta.0.t = 1,
  xbar.t = seq(-1, 5, 0.1),
  s.t = seq(1, 6, 0.1),
  n.t = 50,
  Delta.tv = 1.75,
  Delta.lrv = 1.5,
  tau.tv = 0.1,
  tau.lrv = 0.8,
  tau.ng = 0.65
)
}
\arguments{
\item{mu.0.t}{prior mean for treatment group}

\item{n.0.t}{prior effective sample size for treatment group}

\item{alpha.0.t}{prior alpha parameter for treatment group}

\item{beta.0.t}{prior beta parameter for treatment group}

\item{xbar.t}{sample mean for treatment group}

\item{s.t}{sample sd for treatment group}

\item{n.t}{sample size for treatment group}

\item{Delta.tv}{TPP Target Value aka Base TPP}

\item{Delta.lrv}{TPP Lower Reference Value aka Min TPP}

\item{tau.tv}{threshold associated with Base TPP}

\item{tau.lrv}{threshold associated with Min TPP}

\item{tau.ng}{threshold associated with No-Go}
}
\value{
A data.frame is returned
}
\description{
Get single sample normal-gamma data.frame with decision output
}
\examples{
\donttest{
my.ss.ng.df <- get.ss.ng.df()
head(my.ss.ng.df)
}
}
