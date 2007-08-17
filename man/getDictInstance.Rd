\name{getDictInstance}
\alias{getDictInstance}
\title{Get a dictionary instance}
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
validInstallation <- initDict()
if (validInstallation)
  getDictInstance()
}
\keyword{file}
