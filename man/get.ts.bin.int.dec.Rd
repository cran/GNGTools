% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.ts.bin.int.dec.r
\name{get.ts.bin.int.dec}
\alias{get.ts.bin.int.dec}
\title{Get two-sample binary interim decision}
\usage{
get.ts.bin.int.dec(
  a.con = 1,
  b.con = 1,
  a.trt = 1,
  b.trt = 1,
  n.trt = 40,
  n.con = 40,
  n.int.c = c(10, 20, 30),
  n.int.t = c(10, 20, 30),
  Delta.lrv = 0.15,
  Delta.tv = 0.3,
  tau.tv = 0.1,
  tau.lrv = 0.8,
  tau.ng = 0.65,
  go.thresh = 0.8,
  ng.thresh = 0.8,
  runs = 500,
  include_nogo = TRUE
)
}
\arguments{
\item{a.con}{alpha parameter for control}

\item{b.con}{beta parameter for control}

\item{a.trt}{alpha parameter for treatment}

\item{b.trt}{beta parameter for treatment}

\item{n.trt}{final sample size for treatment}

\item{n.con}{final sample size for control}

\item{n.int.c}{interim sample sizes for control}

\item{n.int.t}{interim sample sizes for treatment}

\item{Delta.lrv}{min TPP}

\item{Delta.tv}{Base TPP}

\item{tau.tv}{study-end threshold for Base TPP}

\item{tau.lrv}{study-end threshold for Min TPP}

\item{tau.ng}{study-end threshold for NG}

\item{go.thresh}{threshold for predictive probabilities at interim}

\item{ng.thresh}{threshold for predictive probabilities at interim}

\item{runs}{the number of simulation runs}

\item{include_nogo}{logical}
}
\value{
a Data frame with the following columns
* **IntermR_C** the number of control responses
* **IntermR_T** the number of treatment responses
* **Interm** the index of which interim analysis is being assessed.
* **Go/No-Go/Consider** the proportion of simulations generating a final go/No-Go/Consider decision.
* **Decision** The interim decision based off of the simulated results.
}
\description{
Get two-sample binary interim decision
}
\examples{
my.ts.bin.int.dec <- get.ts.bin.int.dec()
my.ts.bin.int.dec
}
