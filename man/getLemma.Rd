\name{getLemma}
\alias{getLemma}
\title{Get Index Term Lemma}
\description{
  Retrieve the lemma (i.e., word) of an index term.
}
\usage{
getLemma(indexterm)
}
\arguments{
  \item{indexterm}{The index term whose lemma is returned.}
}
\value{
  A character vector holding the index term lemma.
}
\author{Ingo Feinerer}
\references{
  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{http://mfwallace.googlepages.com/jawbone.html}
}
\seealso{\code{\link{getIndexTerms}}}
\examples{
if(initDict()) {
  filter <- getTermFilter("StartsWithFilter", "car", TRUE)
  terms <- getIndexTerms("NOUN", 5, filter)
  sapply(terms, getLemma)
}
}
\keyword{attribute}
