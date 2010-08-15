\name{utilities}
\alias{utilities}
\alias{requirements}
\alias{createDatabase}
\alias{databaseResult}
\alias{installAtlas}
\alias{installGoto}
\alias{installMKL}
\alias{purgeAtlas}
\alias{purgeGoto}
\alias{purgeMKL}
\title{Utility functions for GPU/CPU Benchmarking}
\description{
  Utility functions for GPU/CPU Benchmarking
}
\usage{
  requirements()

  createDatabase(dbfile)
  databaseResult(data,dbfile)

  installAtlas()
  installGoto()
  installMKL()
  purgeAtlas()
  purgeGoto()
  purgeMKL()
}
\arguments{
  \item{data}{a (one-row) dataframe containing results from a benchmark}
  \item{dbfile}{character string containing path and name of SQLite database file}
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
}  
\keyword{misc}
