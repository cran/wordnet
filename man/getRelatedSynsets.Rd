\name{getRelatedSynsets}
\alias{getRelatedSynsets}
\title{Get Related Synsets for a Synset}
\description{
  Get related synsets for a given synset based on a pointer symbol.
}
\usage{
getRelatedSynsets(synset, pointerSymbol)
}
\arguments{
  \item{synset}{Basic synset.}
  \item{pointerSymbol}{A symbol indicating the type of the related
    synsets. An overview is available at
    \url{https://wordnet.princeton.edu/documentation/wnsearch3wn}.}
}
\value{
  A list of synsets.
}
\references{
  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{https://sites.google.com/site/mfwallace/jawbone}
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
