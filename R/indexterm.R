getLemma <- function(indexterm) {
    .jcall(indexterm, "S", "getLemma")
}

getSynsets <- function(indexterm) {
    .jcall(indexterm, "[Lcom/nexagis/jawbone/Synset;", "getSynsets")
}

getSynonyms <- function(indexterm) {
    result <- character(0)
    synsets <- .jcall(indexterm, "[Lcom/nexagis/jawbone/Synset;", "getSynsets")
    for (s in synsets)
        result <- c(result, getWord(s))
    return(sort(unique(result)))
}
