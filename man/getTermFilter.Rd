\name{getTermFilter}
\alias{getTermFilter}
\title{Get a Term Filter}
\description{
  Get a term filter.
}
\usage{
getTermFilter(type, word, ignoreCase)
}
\arguments{
  \item{type}{Filter type.
    Available filters are \code{"ContainsFilter"},
    \code{"EndsWithFilter"}, \code{"ExactMatchFilter"},
    \code{"RegexFilter"}, \code{"SoundFilter"},
    \code{"StartsWithFilter"}, and \code{"WildcardFilter"}.
    Can also be a unique abbreviation of an available filter name.
  }
  \item{word}{Term to be matched.}
  \item{ignoreCase}{Indicates whether lower and upper case are
    distinguished.}
}
\value{
  A term filter.
}
\references{
  \bibshow{wordnet::Wallace:2007}
}
\author{Ingo Feinerer}
\examples{
if(initDict())
  getTermFilter("StartsWithFilter", "car", TRUE)
}
\keyword{file}
