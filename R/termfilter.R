getFilterTypes <- function() {
   c("ContainsFilter", "EndsWithFilter", "ExactMatchFilter", "RegexFilter",
     "SoundFilter", "StartsWithFilter", "WildcardFilter")
}

getTermFilter <- function(type, word, ignoreCase) {
    if (!(type %in% getFilterTypes()))
        stop("invalid filter")
    .jnew(paste("com.nexagis.jawbone.filter", type, sep="."), word, ignoreCase)
}
