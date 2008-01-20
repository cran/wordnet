dict <- local({
    d <- NULL
    function(new, ...) {
        if (!missing(new))
            d <<- new
        else
            d
    }
})

.onLoad <- function(libname, pkgname) {
    require("rJava")
    .jinit(system.file("java",
                       "jawbone.jar",
                       package = pkgname,
                       lib.loc = libname))

    if (initDict())
        wordnet:::dict(getDictInstance())
}
