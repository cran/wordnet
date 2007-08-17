.onLoad <- function(libname, pkgname) {
    require("rJava")
    .jinit(system.file("jar", "jawbone.jar", package = "wordnet"))
}
