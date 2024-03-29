% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/return.ts.bin.int.predprob.table.r
\name{return.ts.bin.int.predprob.table}
\alias{return.ts.bin.int.predprob.table}
\title{Return two-sample binary predictive probability table}
\usage{
return.ts.bin.int.predprob.table(
  a.con = 0.5,
  b.con = 0.5,
  a.trt = 0.5,
  b.trt = 0.5,
  Delta.lrv = 0.08,
  Delta.tv = 0.08,
  tau.tv = 0.7,
  tau.lrv = 0.7,
  tau.ng = 0,
  n.int.con = 5,
  n.int.trt = 5,
  n.trt = 10,
  n.con = 10,
  p.con = 0.2,
  p.trt = 0.2 + seq(0, 0.5, 0.1),
  studyend = NULL,
  goparallel = FALSE
)
}
\arguments{
\item{a.con}{prior alpha parameter for control group}

\item{b.con}{prior beta parameter for control group}

\item{a.trt}{prior alpha parameter for treatment group}

\item{b.trt}{prior alpha parameter for treatment group}

\item{Delta.lrv}{TPP Lower Reference Value aka Min TPP}

\item{Delta.tv}{TPP Target Value aka Base TPP}

\item{tau.tv}{threshold associated with Base TPP}

\item{tau.lrv}{threshold associated with Min TPP}

\item{tau.ng}{threshold associated with No-Go}

\item{n.int.con}{sample size for control group at interim}

\item{n.int.trt}{sample size for treatment group at interim}

\item{n.trt}{sample size for control group at interim}

\item{n.con}{sample size for treatment group at interim}

\item{p.con}{probability of success for control group}

\item{p.trt}{probability of success for treatment group}

\item{studyend}{keep null}

\item{goparallel}{Option to use parallel computing}
}
\value{
A data.frame is returned
}
\description{
Return two-sample binary predictive probability table
}
\examples{
\donttest{
my.ts.bin.int.predprob.table <- return.ts.bin.int.predprob.table()
}
}
\author{
Greg Cicconetti
}
