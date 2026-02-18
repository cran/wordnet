\name{getWord}
\alias{getWord}
\title{Get Synset Word}
\description{
  Get the words in a synset.
}
\usage{
getWord(synset)
}
\arguments{
  \item{synset}{The synset whose words are returned.}
}
\value{
  A character vector holding the words.
}
\references{
  \bibshow{wordnet::Wallace:2007}
}
\author{Ingo Feinerer}
\seealso{\code{\link{getSynsets}}}
\examples{
if(initDict()) {
  filter <- getTermFilter("ExactMatchFilter", "hot", TRUE)
  terms <- getIndexTerms("ADJECTIVE", 5, filter)
  synsets <- getSynsets(terms[[1]])
  related <- getRelatedSynsets(synsets[[1]], "!")
  sapply(related, getWord)
}
}
\keyword{file}
