% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make.ts.bin.ria.r
\name{make.ts.bin.ria}
\alias{make.ts.bin.ria}
\title{Make two-sample binary rule in action plot}
\usage{
make.ts.bin.ria(
  a.con = 1,
  b.con = 1,
  n.con = 40,
  x.con = 9,
  a.trt = 1,
  b.trt = 1,
  n.trt = 40,
  x.trt = 17,
  Delta.lrv = 0.15,
  Delta.tv = 0.3,
  tau.tv = 0.1,
  tau.lrv = 0.8,
  tau.ng = 0.65,
  nlines.ria = 20,
  tsize = 4,
  nlines = 25,
  add.table = TRUE
)
}
\arguments{
\item{a.con}{prior alpha parameter for control group}

\item{b.con}{prior beta parameter for control group}

\item{n.con}{sample size for control group}

\item{x.con}{number of responders for control group}

\item{a.trt}{prior alpha parameter for treatment group}

\item{b.trt}{prior beta parameter for treatment group}

\item{n.trt}{sample size for control treatment group}

\item{x.trt}{number of responders for treatment group}

\item{Delta.lrv}{TPP Lower Reference Value aka Min TPP}

\item{Delta.tv}{TPP Target Value aka Base TPP}

\item{tau.tv}{threshold associated with Base TPP}

\item{tau.lrv}{threshold associated with Min TPP}

\item{tau.ng}{threshold associated with No-Go}

\item{nlines.ria}{Control for text spacing}

\item{tsize}{Control for text size}

\item{nlines}{Control for text spacing}

\item{add.table}{provides extended output summaries}
}
\value{
a ggplot object is returned
}
\description{
Make two-sample binary rule in action plot
}
\examples{
my.ts.bin.ria <- make.ts.bin.ria(add.table=TRUE)
plot(my.ts.bin.ria[[1]])
my.ts.bin.ria[[2]]
my.ts.bin.ria[[3]]
my.ts.bin.ria[[4]]
}
