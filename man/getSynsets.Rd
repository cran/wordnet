\name{getSynsets}
\alias{getSynsets}
\title{Get synsets for an index term}
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
  An array of synsets.
}
\references{
  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{http://mfwallace.googlepages.com/jawbone.html}
}
\author{Ingo Feinerer}
\seealso{\code{\link{getIndexTerms}}}
\examples{
validInstallation <- initDict()
if (validInstallation) {
    dict <- getDictInstance()
    filter <- getTermFilter("ExactMatchFilter", "hot", TRUE)
    terms <- getIndexTerms(dict, "ADJECTIVE", 5, filter)
    getSynsets(terms[[1]])
}}
\keyword{file}
