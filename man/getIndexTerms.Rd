\name{getIndexTerms}
\alias{getIndexTerms}
\title{Get Index Terms}
\description{
  Get index terms from a WordNet dictionary as specified by a filter.
}
\usage{
getIndexTerms(pos, maxLimit, filter)
}
\arguments{
  \item{pos}{Part of speech type.
    Must be either \code{"ADJECTIVE"}, \code{"ADVERB"}, \code{"NOUN"},
    or \code{"VERB"}.}
  \item{maxLimit}{Maximum number of results.}
  \item{filter}{A term filter (see \code{\link{getTermFilter}}).}
}
\value{
  A list of index terms.
}
\references{
  \bibshow{wordnet::Wallace:2007}
}
\examples{
if(initDict()) {
  filter <- getTermFilter("StartsWithFilter", "car", TRUE)
  getIndexTerms("NOUN", 5, filter)
}
}
\author{Ingo Feinerer}
\keyword{file}
