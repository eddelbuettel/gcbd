#!/usr/bin/r -t

suppressMessages(library(gcbd))
suppressMessages(library(getopt))

## default values
N <- 250		# nobs
n <- 30 		# runs
verbose <- FALSE	# verbosity

## option specification
options <- matrix(c('verbose', 'v', 2, "integer", paste("verbose operations, default is", ifelse(verbose, "true", "false")),
                    'help'   , 'h', 0, "logical", paste("help on options"),
                    'nobs'   , 'n', 1, "integer", paste("number of rows and columns in matrix, default is", N),
                    'runs'   , 'r', 1, "integer", paste("number of benchmark runs, default is", n)),
                    ncol=5,
                    byrow=TRUE)

## parse argv
opt <- getopt(options, opt=argv)

if (!is.null(opt$help)) {
    cat(getopt(options, opt=argv, command="benchmarkSVD.r", usage=TRUE))
    q(status=100)
}

N       <- ifelse(is.null(opt$nobs), N, opt$nobs)
n       <- ifelse(is.null(opt$runs), n, opt$runs)
verbose <- ifelse(is.null(opt$verbose), verbose, opt$verbose)

requirements()

purgeAtlas()
purgeMKL()
purgeGoto()

cmd      <- paste('r -lgcbd       -e"cat(svdBenchmark(', N, ",", n, '))"', sep="")
cmdmagma <- paste('r -lgcbd,magma -e"cat(svdBenchmark(', N, ",", n, '))"', sep="")
cmdgpu   <- paste('r -lgcbd       -e"cat(svdBenchmarkgputools(', N, ",", n, '))"', sep="")

ref <- as.numeric(system(cmd, intern=TRUE))

installAtlas()
atlas      <- as.numeric(system(cmd,      intern=TRUE))
magmaAtlas <- as.numeric(system(cmdmagma, intern=TRUE))
purgeAtlas()

installMKL()
mkl      <- as.numeric(system(cmd,      intern=TRUE))
magmaMkl <- as.numeric(system(cmdmagma, intern=TRUE))
purgeMKL()

installGoto()
goto      <- as.numeric(system(cmd,      intern=TRUE))
magmaGoto <- as.numeric(system(cmdmagma, intern=TRUE))
purgeGoto()

gpu <- as.numeric(system(cmdgpu, intern=TRUE))

res <- data.frame(type="svd", nobs=N, nrun=n,
                  ref=ref,
                  atlas=atlas, magmaAtlas=magmaAtlas,
                  mkl=mkl, magmaMkl=magmaMkl,
                  gotob=goto, magmaGoto=magmaGoto,
                  gpu=gpu)

if (verbose) print(res)
databaseResult(res)
