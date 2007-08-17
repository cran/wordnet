\name{getIndexTerms}
\alias{getIndexTerms}
\title{Get index terms}
\description{
  Get index terms from a WordNet dictionary as specified by a filter.
}
\usage{
getIndexTerms(dict, pos, maxLimit, filter)
}
\arguments{
  \item{dict}{A WordNet dictionary.}
  \item{pos}{Part of speech type. Must be either \code{ADJECTIVE},
    \code{ADVERB}, \code{NOUN}, or \code{VERB}.}
  \item{maxLimit}{Maximum number of results.}
  \item{filter}{A term filter.}
}
\value{
  A list of index terms.
}
\seealso{\code{\link{getTermFilter}}}
\references{
  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{http://mfwallace.googlepages.com/jawbone.html}
}
\examples{
validInstallation <- initDict()
if (validInstallation) {
    dict <- getDictInstance()
    filter <- getTermFilter("StartsWithFilter", "car", TRUE)
    getIndexTerms(dict, "NOUN", 5, filter)
}
}
\author{Ingo Feinerer}
\keyword{file}
