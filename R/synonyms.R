synonyms <- function(word) {
    filter <- getTermFilter("ExactMatchFilter", word, TRUE)
    terms <- getIndexTerms("NOUN", 1, filter)
    if (is.null(terms))
        character(0)
    else
        getSynonyms(terms[[1]])
}
