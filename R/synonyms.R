synonyms <-
function(word)
{
    filter <- getTermFilter("ExactMatchFilter", word, TRUE)
    terms <- getIndexTerms("NOUN", 1L, filter)
    if (is.null(terms))
        character()
    else
        getSynonyms(terms[[1L]])
}
