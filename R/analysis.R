
loglogAnalysis <- function() {

    dbcon <- dbConnect(dbDriver("SQLite"), dbname=system.file("sql", "gcbd.sqlite", package="gcbd"))
    BM <- dbGetQuery(dbcon, 'select * from benchmark group by host,type,nobs')
    invisible(dbDisconnect(dbcon))

    slopes <- ddply(BM, .(host,type),
                    function(X) data.frame(ref=coef(lm(log(ref) ~ log(nobs), data=X))[2],
                                           atlas=coef(lm(log(atlas) ~ log(nobs), data=X))[2],
                                           atl39=coef(lm(log(atl39) ~ log(nobs), data=X))[2],
                                           goto=coef(lm(log(gotob) ~ log(nobs), data=X))[2],
                                           mkl=coef(lm(log(mkl) ~ log(nobs), data=X))[2],
                                           gpu=ifelse(any(is.finite(X[,"gpu"])), coef(lm(log(gpu) ~ log(nobs), data=X))[2], NA)))

    intcpt <- ddply(BM, .(host,type),
                    function(X) data.frame(ref=coef(lm(log(ref) ~ log(nobs), data=X))[1],
                                           atlas=coef(lm(log(atlas) ~ log(nobs), data=X))[1],
                                           atl39=coef(lm(log(atl39) ~ log(nobs), data=X))[1],
                                           goto=coef(lm(log(gotob) ~ log(nobs), data=X))[1],
                                           mkl=coef(lm(log(mkl) ~ log(nobs), data=X))[1],
                                           gpu=ifelse(any(is.finite(X[,"gpu"])), coef(lm(log(gpu) ~ log(nobs), data=X))[1], NA)))


    lfslopes <- melt(slopes, id.vars=c("host", "type"), variable_name="method")
    lfintcpt <- melt(intcpt, id.vars=c("host", "type"), variable_name="method")

    lattice.options(default.theme = standard.theme(color = FALSE))

    # dotplot(type  ~ value | method, group=host, data=longform, layout=c(1,6))
    # dotplot(method  ~ value | type, group=host, data=SL)
    invisible(list(intercept=lfintcpt, slope=lfslope))
}
