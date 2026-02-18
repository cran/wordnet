\name{getSynonyms}
\alias{getSynonyms}
\title{Get Synonyms for an Index Term}
\description{
Get synonyms for a given index term.
}
\usage{
getSynonyms(indexterm)
}
\arguments{
  \item{indexterm}{The input index term.}
}
\value{
  A character vector holding the synonyms for the given index term.
}
\references{
  \bibshow{wordnet::Wallace:2007}
}
\author{Ingo Feinerer}
\seealso{\code{\link{getIndexTerms}}}
\examples{
if(initDict()) {
  filter <- getTermFilter("ExactMatchFilter", "company", TRUE)
  terms <- getIndexTerms("NOUN", 5, filter)
  getSynonyms(terms[[1]])
}
}
\keyword{file}
