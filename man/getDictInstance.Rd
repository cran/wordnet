\name{getDictInstance}
\alias{getDictInstance}
\title{Get a Dictionary Instance}
\description{
  Returns an instance to a WordNet dictionary.
}
\usage{
getDictInstance()
}
\value{
  A dictionary object.
}
\author{Ingo Feinerer}
\references{
  \bibshow{wordnet::Wallace:2007}
}
\examples{
if(initDict())
  getDictInstance()
}
\keyword{file}
