\name{benchmark}
\alias{benchmark}
\alias{getMatrix}
\alias{matmultBenchmark}
\alias{matmultBenchmarkgputools}
\alias{qrBenchmark}
\alias{qrBenchmarkgputools}
\alias{svdBenchmark}
%\alias{svdBenchmarkgputools}
\alias{luBenchmark}
\alias{luBenchmarkgputools}
\title{Benchmarking functions for GPU/CPU Benchmarking}
\description{
  Benchmarking functions for GPU/CPU Benchmarking
}
\usage{
  getMatrix(N)
  matmultBenchmark(N, n, trim=0.1)
  matmultBenchmarkgputools(N, n, trim=0.1)
  qrBenchmark(N, n, trim=0.1)
  qrBenchmarkgputools(N, n, trim=0.1)
  svdBenchmark(N, n, trim=0.1)
%  svdBenchmarkgputools(N, n, trim=0.1)
  luBenchmark(N, n, trim=0.1)
  luBenchmarkgputools(N, n, trim=0.1)
}
\arguments{
  \item{N}{dimension of square matrix}
  \item{n}{number of replications of benchmarked test}
  \item{trim}{percentage to be trimmed in \code{\link{mean}} estimation}
}
\details{
  \code{getMatrix} provides a square matrix of the given dimension.

  \code{matmultBenchmark} times the cost of multiplying a matrix of the
  given size with itself, repeated as specified and returns the trimmed
  mean of the elapsed times. \code{matmultBenchmarkgputools} does the
  same using the \strong{gputools} and packages.

  \code{qrBenchmark} times the cost of a QR decomposition of a matrix of
  the given size, repeated as specified and returns the trimmed mean of
  the elapsed times. \code{qrBenchmarkgputools} does the same using the
  \strong{gputools} packages.

  \code{svdBenchmark} times the cost of a Singular Value Decomposition
  (SVD) of a matrix of the given size, repeated as specified and returns
  the trimmed mean of the elapsed times. %\code{svdBenchmarkgputools}
  %does the same using the \strong{gputools} package.

  \code{luBenchmark} times the cost of a LU Decomposition of a matrix of
  the given size, repeated as specified and returns the trimmed mean of
  the elapsed times. \code{luBenchmarkgputools} does the same using the
  \strong{gputools} package.
  
}

\keyword{misc}
