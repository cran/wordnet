.onLoad <- function(libname, pkgname) {
    require("rJava")
    .jinit(system.file("java",
                       "jawbone.jar",
                       package = pkgname,
                       lib.loc = libname))
}
