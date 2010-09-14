

# dput(brewer.pal(7, "Set1"))
.cols <- c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
           "#FF7F00", "#FFF33", "#A65628")[-6]

                                        # dput(brewer.pal(8,"Paired"))
.paircols <- c("#A6CEE3", "#1F78B4", "#B2DF8A", "#33A02C",
               "#FB9A99", "#E31A1C", "#FDBF6F", "#FF7F00")

figure_MatMult_i7 <- function(D) {
    if (missing(D)) D <- getBenchmarkData("i7_920")

    D <- D[ D$type=='matmult', -c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob","gpu")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="Matrix Multiplication")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto","GPU"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob","gpu")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="Matrix Multiplication", log="xy")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto","GPU"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)
    invisible(NULL)
}

figure_MatMult_xeon <- function(D) {
    if (missing(D)) D <- getBenchmarkData("xeon_X5570")

    D <- D[ D$type=='matmult', ,-c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="Matrix Multiplication")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="Matrix Multiplication", log="xy")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)
    invisible(NULL)
}

figure_QR_i7 <- function(D) {
    if (missing(D)) D <- getBenchmarkData("i7_920")

    D <- D[ D$type=='qr', ,-c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob","gpu")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="QR Decomposition")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto","GPU"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob","gpu")], type='l', lty=1, lwd=3, col=.cols, log="xy",
            xlab="Matrix dimension", ylab="Time in seconds", main="QR Decomposition")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto","GPU"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)
    invisible(NULL)
}

figure_QR_xeon <- function(D) {
    if (missing(D)) D <- getBenchmarkData("xeon_X5570")

    D <- D[ D$type=='qr', ,-c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="QR Decomposition")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="QR Decomposition", log="xy")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)
    invisible(NULL)
}

figure_SVD_i7 <- function(D) {
    if (missing(D)) D <- getBenchmarkData("i7_920")

    D <- D[ D$type=='svd', ,-c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob","gpu")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="SVD Decomposition")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto","GPU"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob","gpu")], type='l', lty=1, lwd=3, col=.cols, log="xy",
            xlab="Matrix dimension", ylab="Time in seconds", main="SVD Decomposition")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto","GPU"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)

    invisible(NULL)
}

figure_SVD_xeon <- function(D) {
    if (missing(D)) D <- getBenchmarkData("xeon_X5570")

    D <- D[ D$type=='svd', ,-c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="SVD Decomposition")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="SVD Decomposition", log="xy")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)

    invisible(NULL)
}

figure_LU_i7 <- function(D) {
    if (missing(D)) D <- getBenchmarkData("i7_920")

    D <- D[ D$type=='lu', ,-c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="LU Decomposition")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols, log="xy",
            xlab="Matrix dimension", ylab="Time in seconds", main="LU Decomposition")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)

    invisible(NULL)
}

figure_LU_xeon <- function(D) {
    if (missing(D)) D <- getBenchmarkData("xeon_X5570")

    D <- D[ D$type=='lu', ,-c(1:2,5)]
    op <- par(mfrow=c(1,2))
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="LU Decomposition")
    legend("topleft", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    matplot(x=D[,"nobs"], y=D[,c("ref","atlas","atl39","mkl","gotob")], type='l', lty=1, lwd=3, col=.cols,
            xlab="Matrix dimension", ylab="Time in seconds", main="LU Decomposition", log="xy")
    legend("bottomright", legend=c("Ref","Atlas","Atl39","MKL","Goto"), bty="n", col=.cols, lty=1, lwd=3)
    par(op)

    invisible(NULL)
}

figure_LogLogSlopes <- function() {
    LL <- loglogAnalysis()
    DF <- LL[["slope"]]

    DF[,"method"] <- ordered(as.character(DF[,"method"]),
                             levels=c("gpu", "goto", "mkl", "atl39", "atlas", "ref"))
    DF[,"type"] <- ordered(as.character(DF[,"type"]),
                           levels=c("matmult", "qr", "svd", "lu"))

    sb <- trellis.par.get("strip.background")
    sb[["col"]][1] <- "lightgray"
    trellis.par.set("strip.background", sb)

    ss <- trellis.par.get("superpose.symbol")
    ss[["col"]][1:6] <- .cols
    ss[["cex"]] <- rep(1.0, 7)
    ss[["pch"]] <- rep(19, 7)
    ss[["alpha"]] <- rep(0.75, 7)
    trellis.par.set("superpose.symbol", ss)

    with(DF, print(dotplot(method  ~ value | type, group=host,
                           xlab="Slope of elapsed times to matrix dimension in log/log chart",
                           key=simpleKey(text=c("i7","xeon"), space="bottom", column=2))))
    invisible(NULL)
}

figure_LogLogIntercept <- function() {
    LL <- loglogAnalysis()
    DF <- LL[["intercept"]]

    DF[,"method"] <- ordered(as.character(DF[,"method"]),
                             levels=c("gpu", "goto", "mkl", "atl39", "atlas", "ref"))
    DF[,"type"] <- ordered(as.character(DF[,"type"]),
                           levels=c("matmult", "qr", "svd", "lu"))

    sb <- trellis.par.get("strip.background")
    sb[["col"]][1] <- "lightgray"
    trellis.par.set("strip.background", sb)

    ss <- trellis.par.get("superpose.symbol")
    ss[["col"]][1:6] <- .cols
    ss[["cex"]] <- rep(1.0, 7)
    ss[["pch"]] <- rep(19, 7)
    ss[["alpha"]] <- rep(0.75, 7)
    trellis.par.set("superpose.symbol", ss)

    with(DF, print(dotplot(method  ~ value | type, group=host,
                           xlab="Intercept of elapsed times to matrix dimension in log/log chart",
                           key=simpleKey(text=c("i7","xeon"), space="bottom", column=2))))
    invisible(NULL)
}


## figure_magma_MatMult_QR <- function(D) {
##     if (missing(D)) D <- getBenchmarkData("i7_920")

##     D <- D[ D$type=='matmult', -c(1:2,5)]

##     op <- par(mfrow=c(1,2))
##     N <- cbind(D[,"nobs"],
##                D[,"atlas"]/D[,"magmaAtlas"],
##                D[,"atl39"]/D[,"magmaAtl39"],
##                D[,"gotob"]/D[,"magmaGoto"],
##                D[,"mkl"]/D[,"magmaMkl"])
##     matplot(x=D[,"nobs"], y=N[,-1],
##             type='l', lty=1, lwd=3, col=.cols[-1], #pch=".",
##             xlab="Matrix dimension", ylab="Magma performance relative to BLAS",
##             main="Matrix Multiplication:\nRatio of BLAS to BLAS+Magma")
##     legend("topright", legend=c("Atlas","Atl39","Goto", "MKL"),
##            bty="n", col=.cols[-1], lty=1, lwd=3)

##     ##D <- subset(i7[,-c(1:2,5)], type=='qr')
##     N <- cbind(D[,"nobs"],
##                D[,"atlas"]/D[,"magmaAtlas"],
##                D[,"atl39"]/D[,"magmaAtl39"],
##                D[,"gotob"]/D[,"magmaGoto"],
##                D[,"mkl"]/D[,"magmaMkl"])
##     matplot(x=D[,"nobs"], y=N[,-1],
##             type='n',
##             lty=1, lwd=3, col=.cols[-1], #pch=".",
##             xlab="Matrix dimension", ylab="Magma performance relative to BLAS",
##             main="QR Decomposition:\nRatio of BLAS to BLAS+Magma")
##     legend("bottomright", legend=c("Atlas","Atl39","Goto", "MKL"),
##            bty="n", col=.cols[-1], lty=1, lwd=3)


##     invisible(NULL)
## }

## figure_magma_SVD_LU <- function(D) {
##     if (missing(D)) D <- getBenchmarkData("i7_920")


##     D2 <- D[ D$type=='svd', -c(1:2,5)]

##     op <- par(mfrow=c(1,2))
##     N <- cbind(D2[,"nobs"],
##                D2[,"atlas"]/D2[,"magmaAtlas"],
##                D2[,"atl39"]/D2[,"magmaAtl39"],
##                D2[,"gotob"]/D2[,"magmaGoto"],
##                D2[,"mkl"]/D2[,"magmaMkl"])
##     matplot(x=N[,1], y=N[,-1],
##             type='l', lty=1, lwd=3, col=.cols[-1], #pch=".",
##             xlab="Matrix dimension", ylab="Magma performance relative to BLAS",
##             main="SVD Decomposition:\nRatio of BLAS to BLAS+Magma")
##     legend("bottomright", legend=c("Atlas", "Atl39", "Goto", "MKL"),
##            bty="n", col=.cols[-1], lty=1, lwd=3)

##     D2 <- D[ D$type=='lu' & D$nobs<=2000, -c(1:2,5)]
##     N <- cbind(D2[,"nobs"],
##                D2[,"atlas"]/D2[,"magmaAtlas"],
##                D2[,"atl39"]/D2[,"magmaAtl39"],
##                D2[,"gotob"]/D2[,"magmaGoto"],
##                D2[,"mkl"]/D2[,"magmaMkl"])
##     matplot(x=N[,1], y=N[,-1],
##             type='l', lty=1, lwd=3, col=.cols[-1], #pch=".",
##             xlim=c(min(N[,1]), 4000),  # fill in for missing
##             xlab="Matrix dimension", ylab="Magma oerformance relative to BLAS",
##             main="LU Decomposition:\nRatio of BLAS to BLAS+Magma")
##     legend("bottomright", legend=c("Atlas", "Atl39", "Goto", "MKL"),
##            bty="n", col=.cols[-1], lty=1, lwd=3)

##     invisible(NULL)
## }
