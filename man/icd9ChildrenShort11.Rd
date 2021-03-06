% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{icd9ChildrenShort11}
\alias{icd9ChildrenShort11}
\title{Find child codes from vector of ICD-9 codes.}
\usage{
icd9ChildrenShort11(icd9Short, onlyReal)
}
\description{
Pure C++11 implementation using \code{unordered set} to find children of
given codes
}
\examples{
\dontrun{
microbenchmark::microbenchmark(
  icd9ChildrenShort(c("001", 100:500), onlyReal = TRUE),
  icd9ChildrenShort11(c("001", 100:500), onlyReal = TRUE),
  times = 5)
  # C++11 about 15\% faster for this data
}
}
\keyword{internal}
