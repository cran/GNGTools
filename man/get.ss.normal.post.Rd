% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.ss.normal.post.r
\name{get.ss.normal.post}
\alias{get.ss.normal.post}
\title{Get single sample normal (with known variance) posterior distribution parameters}
\usage{
get.ss.normal.post(
  prior.mean = 0,
  prior.var = 1e+06,
  sample.n = 10,
  sample.xbar = seq(-1, 1, 0.01),
  sample.var = 1
)
}
\arguments{
\item{prior.mean}{prior mean}

\item{prior.var}{prior variance}

\item{sample.n}{sample size}

\item{sample.xbar}{sample mean}

\item{sample.var}{sample variance}
}
\value{
returns a data.frame hold posterior parameters, sample x.bar, sample variance and posterior mean and variances
}
\description{
Returns the parameters of the posterior distribution in the case of normal prior with known variance and normal data
}
\examples{
 my.ss.normal.post <- get.ss.normal.post()
 head(my.ss.normal.post)
}
\author{
Greg Cicconetti
}
