\name{benchmark}
\alias{benchmark}
\alias{getMatrix}
\alias{multBenchmark}
\alias{multBenchmarkgputools}
\alias{qrBenchmark}
\alias{qrBenchmarkgputools}
\title{Benchmarking functions for GPU/CPU Benchmarking}
\description{
  Benchmarking functions for GPU/CPU Benchmarking
}
\usage{
  getMatrix(N)
  multBenchmark(N, n, trim=0.1)
  multBenchmarkgputools(N, n, trim=0.1)
  qrBenchmark(N, n, trim=0.1)
  qrBenchmarkgputools(N, n, trim=0.1)
}
\arguments{
  \item{N}{dimension of square matrix}
  \item{n}{number of replications of benchmarked test}
  \item{trim}{percentage to be trimmed in \code{\link{mean}} estimation}
}
\details{
  \code{getMatrix} provides a square matrix of the given dimension.

  \code{multBenchmark} times the cost of multiplying a matrix of the 
  given size with itself, repeated as specified and returns the trimmed
  mean of the elapsed times. \code{multBenchmarkgputools} does the using
  the \strong{gputools} package.

  \code{qrBenchmark} times the cost of a QR decomposition of a matrix of the 
  given size, repeated as specified and returns the trimmed
  mean of the elapsed times. \code{qrBenchmarkgputools} does the using
  the \strong{gputools} package.
}
\keyword{misc}
