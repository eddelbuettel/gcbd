\name{utilities}
\alias{utilities}
\alias{requirements}
\alias{createDatabase}
\alias{databaseResult}
\alias{installAtlas}
\alias{installAtlas39}
\alias{installGoto}
\alias{installMKL}
\alias{purgeAtlas}
\alias{purgeAtlas39}
\alias{purgeGoto}
\alias{purgeMKL}
\alias{isPackageInstalled}
\alias{hasGputools}
\alias{hasMagma}
\alias{getBenchmarkData}
\title{Utility functions for GPU/CPU Benchmarking}
\description{
  Utility functions for GPU/CPU Benchmarking
}
\usage{
  requirements()

  createDatabase(dbfile)
  databaseResult(data,dbfile)

  installAtlas()
  installAtlas39()
  installGoto()
  installMKL()
  purgeAtlas()
  purgeAtlas39()
  purgeGoto()
  purgeMKL()

  isPackageInstalled(package)
  hasGputools()
  hasMagma()

  getBenchmarkData(host)
}
\arguments{
  \item{data}{a (one-row) dataframe containing results from a benchmark}
  \item{dbfile}{character string containing path and name of SQLite database file}
  \item{package}{character string denoting a package to test for}
  \item{host}{character string denoting the host system for which
    benchmark data is to be retrieved}
}
\details{
  \code{requirements} checks for a few system requirements such platform
  (Unix), operating system provider (Debian or Ubuntu) and presense of
  key packages (gotoblas2-helper).

  \code{createDatabase} creates an empty SQLite database to store
  benchmark results.

  \code{databaseResult} stores the benchmark results in the SQLite
  database.

  The different \code{install*} functions add the respective BLAS
  libraries to the system; the different \code{purge*} functions do the
  inverse operation and remove them.

  The functions \code{hasGputools} and \code{hasMagma} test for presence
  of these CRAN package on the current machines -- as a very cheap proxy
  to testing whether the machine in GPU-capable or not. They use the
  function \code{isPackageInstalled} for this test.

  The function \code{getBenchmarkData} retrieves benchmark results for a
  given host.
}  
\keyword{misc}
