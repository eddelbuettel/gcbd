# gcbd

[![CI](https://github.com/eddelbuettel/gcbd/workflows/ci/badge.svg)](https://github.com/eddelbuettel/gcbd/actions?query=workflow%3Aci)


## GPU/CPU Benchmarking on Debian-package based systems

This package benchmarks performance of a few standard linear algebra
operations (such as a matrix product and QR, SVD and LU decompositions)
across a number of different BLAS libraries as well as a GPU implementation.

To do so, it takes advantage of the ability to 'plug and play' different
BLAS implementations easily on a Debian and/or Ubuntu system.  The initial
version supported
 * reference blas (refblas) which are unaccelerated as a baseline
 * Atlas which are tuned but typically configure single-threaded
 * Atlas39 which are tuned and configured for multi-threaded mode
 * Goto Blas which are accelerated and multithreaded
 * Intel MKL which are a commercial accelerated and multithreaded version.
As for GPU computing, we use the CRAN package
 * gputools

For Goto Blas, the gotoblas2-helper script from the ISM in Tokyo can be
used. For Intel MKL we use the Revolution R packages from Ubuntu 9.10.

