synonyms <- function(dict, word) {
    filter <- getTermFilter("ExactMatchFilter", word, TRUE)
    terms <- getIndexTerms(dict, "NOUN", 1, filter)
    getSynonyms(terms[[1]])
}
