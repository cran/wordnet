initDict <- function(pathData = "") {
    # Try user supplied path
    .jcall("com.nexagis.jawbone.Dictionary", "V", "initialize", pathData)
    validPath <- .jcall("com.nexagis.jawbone.Dictionary", "Z", "pathIsValid")

    # Try WNHOME (UNIX) environment variable
    if (!validPath) {
        pathData <- paste(Sys.getenv("WNHOME"), "dict", sep = "/")
        .jcall("com.nexagis.jawbone.Dictionary", "V", "initialize", pathData)
        validPath <- .jcall("com.nexagis.jawbone.Dictionary", "Z", "pathIsValid")
    }

    # Windows editions provide a registry key

    # Try UNIX Wordnet 3.0 default path
     if (!validPath) {
        pathData <- "/usr/local/WordNet-3.0/dict"
        .jcall("com.nexagis.jawbone.Dictionary", "V", "initialize", pathData)
        validPath <- .jcall("com.nexagis.jawbone.Dictionary", "Z", "pathIsValid")
   }

   # Try UNIX Wordnet 2.1 default path
    if (!validPath) {
        pathData <- "/usr/local/WordNet-2.1/dict"
        .jcall("com.nexagis.jawbone.Dictionary", "V", "initialize", pathData)
        validPath <- .jcall("com.nexagis.jawbone.Dictionary", "Z", "pathIsValid")
    }

    # Try Debian WordNet default path
    if (!validPath) {
        pathData <- "/usr/share/wordnet"
        .jcall("com.nexagis.jawbone.Dictionary", "V", "initialize", pathData)
        validPath <- .jcall("com.nexagis.jawbone.Dictionary", "Z", "pathIsValid")
    }

    return(validPath)
}

getDictInstance <- function() {
    .jnew("com.nexagis.jawbone.Dictionary")
}

getIndexTerms <- function(dict, pos, maxLimit, filter) {
    iterator <- .jcall(dict,
                       "Ljava/util/Iterator;",
                       "getIndexTermIterator",
                       .jfield("com.nexagis.jawbone.PartOfSpeech", "Lcom/nexagis/jawbone/PartOfSpeech;", pos),
                       as.integer(maxLimit),
                       .jcast(filter, "com.nexagis.jawbone.filter.TermFilter"))
    .jevalIterator(iterator)
}
