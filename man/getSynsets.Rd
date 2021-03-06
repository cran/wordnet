\name{getSynsets}
\alias{getSynsets}
\title{Get Synsets for an Index Term}
\description{
  Get synsets for a given index term.
}
\usage{
getSynsets(indexterm)
}
\arguments{
  \item{indexterm}{The input index term.}
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
\seealso{\code{\link{getIndexTerms}}}
\examples{
if(initDict()) {
  filter <- getTermFilter("ExactMatchFilter", "hot", TRUE)
  terms <- getIndexTerms("ADJECTIVE", 5, filter)
  getSynsets(terms[[1]])
}
}
\keyword{file}
