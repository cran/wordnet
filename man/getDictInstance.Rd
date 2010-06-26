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
  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{http://mfwallace.googlepages.com/jawbone.html}
}
\examples{
if(initDict())
  getDictInstance()
}
\keyword{file}
