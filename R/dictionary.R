initDict <-
function(pathData = "")
{
    validPath <- FALSE
    for(path in
        c(## Try user supplied path
          pathData,
          ## Try WNHOME (UNIX) environment variable
          file.path(Sys.getenv("WNHOME"), "dict"),
          ## Windows editions provide a registry key
          ## Try UNIX Wordnet 3.0 default path
          "/usr/local/WordNet-3.0/dict",
          ## Try UNIX Wordnet 2.1 default path
          "/usr/local/WordNet-2.1/dict",
          ## Try Debian WordNet default path
          "/usr/share/wordnet"
          )) {
        .jcall("com.nexagis.jawbone.Dictionary", "V", "initialize", path)
        validPath <-
            .jcall("com.nexagis.jawbone.Dictionary", "Z", "pathIsValid")
        if(validPath) break
    }

    if(!validPath)
        warning("cannot find WordNet 'dict' directory: please set the environment variable WNHOME to its parent")

    validPath
}

getDictInstance <-
function()
{
    .jnew("com.nexagis.jawbone.Dictionary")
}

setDict <-
function(pathData)
{
    if(initDict(pathData))
        dict(getDictInstance())
    else
        stop("could not find WordNet installation")
}

getDict <-
function() {
    if(!is.null(d <- dict()))
        d
    else
        stop("could not find Wordnet dictionary")
}

getIndexTerms <-
function(pos, maxLimit, filter)
{
    iterator <-
        .jcall(getDict(),
               "Ljava/util/Iterator;",
               "getIndexTermIterator",
               .jfield("com.nexagis.jawbone.PartOfSpeech",
                       "Lcom/nexagis/jawbone/PartOfSpeech;",
                       pos),
               as.integer(maxLimit),
               .jcast(filter, "com.nexagis.jawbone.filter.TermFilter"))
    .jevalIterator(iterator)
}
