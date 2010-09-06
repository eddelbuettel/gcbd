\name{benchmark}
\alias{benchmark}
\alias{getMatrix}
\alias{getMagmaMatrix}
\alias{matmultBenchmark}
\alias{matmultBenchmarkgputools}
\alias{matmultBenchmarkmagma}
\alias{qrBenchmark}
\alias{qrBenchmarkgputools}
\alias{qrBenchmarkmagma}
\alias{svdBenchmark}
\alias{svdBenchmarkgputools}
\alias{svdBenchmarkmagma}
\alias{luBenchmark}
\alias{luBenchmarkgputools}
\alias{luBenchmarkmagma}
\title{Benchmarking functions for GPU/CPU Benchmarking}
\description{
  Benchmarking functions for GPU/CPU Benchmarking
}
\usage{
  getMatrix(N)
  getMagmaMatrix(N)
  matmultBenchmark(N, n, trim=0.1)
  matmultBenchmarkgputools(N, n, trim=0.1)
  matmultBenchmarkmagma(N, n, trim=0.1)
  qrBenchmark(N, n, trim=0.1)
  qrBenchmarkgputools(N, n, trim=0.1)
  qrBenchmarkmagma(N, n, trim=0.1)
  svdBenchmark(N, n, trim=0.1)
  svdBenchmarkgputools(N, n, trim=0.1)
  svdBenchmarkmagma(N, n, trim=0.1)
  luBenchmark(N, n, trim=0.1)
  luBenchmarkgputools(N, n, trim=0.1)
  luBenchmarkmagma(N, n, trim=0.1)
}
\arguments{
  \item{N}{dimension of square matrix}
  \item{n}{number of replications of benchmarked test}
  \item{trim}{percentage to be trimmed in \code{\link{mean}} estimation}
}
\details{
  \code{getMatrix} and \code{getMagmaMatrix} provide a square matrix of
  the given dimension; in the second case an object of type \code{Magma}.

  \code{matmultBenchmark} times the cost of multiplying a matrix of the 
  given size with itself, repeated as specified and returns the trimmed
  mean of the elapsed times. \code{matmultBenchmarkgputools} and
  \code{matmultBenchmarkmagma} do the same using the \strong{gputools}
  and \strong{magma} packages, respectively.

  \code{qrBenchmark} times the cost of a QR decomposition of a matrix of
  the given size, repeated as specified and returns the trimmed mean of
  the elapsed times. \code{qrBenchmarkgputools} and
  \code{qrBenchmarkmagma} do the same using the \strong{gputools} and
  and \strong{magma} packages, respectively.

  \code{svdBenchmark} times the cost of a Singular Value Decomposition
  (SVD) of a matrix of the given size, repeated as specified and returns
  the trimmed mean of the elapsed times. \code{svdBenchmarkgputools} and
  \code{svdBenchmarkmagma} do the same using the \strong{gputools} and
  \strong{magma} packages, respectively.

  \code{luBenchmark} times the cost of a LU Decomposition of a matrix of
  the given size, repeated as specified and returns the trimmed mean of
  the elapsed times. \code{luBenchmarkgputools} and
  \code{luBenchmarkmagma} do the same using the \strong{gputools} and
  \strong{magma} packages, respectively.
  
}

\keyword{misc}
