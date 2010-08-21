
getMatrix <- function(N) {
    a <- rnorm(N*N)
    dim(a) <- c(N,N)
    invisible(gc())
    invisible(a)
}

matmultBenchmark <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, sum(system.time(crossprod(a))[-3]))
    tmean <- mean(traw,trim=trim)
}

matmultBenchmarkgputools <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, sum(system.time(gpuMatMult(a,a))[-3]))
    tmean <- mean(traw,trim=trim)
}

qrBenchmark <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, sum(system.time(qr(a))[-3]))
    tmean <- mean(traw,trim=trim)
}

qrBenchmarkgputools <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, sum(system.time(gpuQr(a))[-3]))
    tmean <- mean(traw,trim=trim)
}

svdBenchmark <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, sum(system.time(svd(a))[-3]))
    tmean <- mean(traw,trim=trim)
}

svdBenchmarkgputools <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, sum(system.time(gpuSvd(a))[-3])
    tmean <- mean(traw,trim=trim)
}

luBenchmark <- function(N, n, trim=0.1) {
    a <- getMatrix(N)
    traw <- replicate(n, sum(system.time(lu(a))[-3])
    tmean <- mean(traw,trim=trim)
}

luBenchmarkgputools <- function(N, n, trim=0.1) {
    NA
}


