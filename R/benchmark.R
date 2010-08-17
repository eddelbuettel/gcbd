
getMatrix <- function(N) {
    a <- rnorm(N*N)
    dim(a) <- c(N,N)
    invisible(gc())
    invisible(a)
}

matmultBenchmark <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, system.time(crossprod(a))["elapsed"])
    tmean <- mean(traw,trim=trim)
}

matmultBenchmarkgputools <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, system.time(gpuMatMult(a,a))["elapsed"])
    tmean <- mean(traw,trim=trim)
}

qrBenchmark <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, system.time(qr(a))["elapsed"])
    tmean <- mean(traw,trim=trim)
}

qrBenchmarkgputools <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, system.time(gpuQr(a))["elapsed"])
    tmean <- mean(traw,trim=trim)
}

svdBenchmark <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, system.time(svd(a))["elapsed"])
    tmean <- mean(traw,trim=trim)
}

svdBenchmarkgputools <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, system.time(gpuSvd(a))["elapsed"])
    tmean <- mean(traw,trim=trim)
}
