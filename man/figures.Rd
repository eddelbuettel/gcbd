\name{figures}
\alias{figures}
\alias{figure_LU_i7}
\alias{figure_LU_xeon}
\alias{figure_MatMult_i7}
\alias{figure_MatMult_xeon}
\alias{figure_QR_i7}
\alias{figure_QR_xeon}
\alias{figure_SVD_i7}
\alias{figure_SVD_xeon}
\alias{figure_LogLogIntercept}
\alias{figure_LogLogSlopes}
\alias{figure_LogLogLattice}
\alias{figure_Lattice}
\alias{loglogAnalysis}
\title{Figures from the corresponding vignette}
\description{
  These functions generate the figures the in the corresponding vignette.
}
\usage{
  loglogAnalysis()
  figure_LU_i7(D)
  figure_LU_xeon(D)
  figure_MatMult_i7(D)
  figure_MatMult_xeon(D)
  figure_QR_i7(D)
  figure_QR_xeon(D)
  figure_SVD_i7(D)
  figure_SVD_xeon(D)
  figure_LogLogIntercept()
  figure_LogLogSlopes()
  figure_LogLogLattice(titles=TRUE)
  figure_Lattice(titles=TRUE)
}
\arguments{
  \item{D}{Benchmark results to be visualised}
  \item{titles}{Boolean flag whether to set `main' and `sub' titles for the figure}
}
\details{
  \code{loglogAnalysis} retrieves past benchmark results from the
  database contained in the package and returns intercepts and slops of
  regressions of elapsed times on matrix dimensions (where both inputs
  are in logarithms).

  The various figure functions create the corresponding figures from the
  vignette.
}
\keyword{misc}

