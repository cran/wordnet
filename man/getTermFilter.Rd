\name{getTermFilter}
\alias{getTermFilter}
\title{Get a term filter}
\description{
  Get a term filter.
}
\usage{
getTermFilter(type, word, ignoreCase)
}
\arguments{
  \item{type}{Filter type. Available filters are \code{ContainsFilter},
    \code{EndsWithFilter}, \code{ExactMatchFilter}, \code{RegexFilter},
    \code{SoundFilter}, \code{StartsWithFilter}, and
    \code{WildcardFilter}.}
  \item{word}{Term to be matched.}
  \item{ignoreCase}{Indicates whether lower and upper case are
    distinguished.}
}
\value{
  A term filter.
}
\references{
  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{http://mfwallace.googlepages.com/jawbone.html}
}
\author{Ingo Feinerer}
\examples{
validInstallation <- initDict()
if (validInstallation) {
    dict <- getDictInstance()
    getTermFilter("StartsWithFilter", "car", TRUE)
}
}
\keyword{file}
