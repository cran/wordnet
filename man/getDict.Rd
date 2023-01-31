\name{getDict}
\alias{getDict}
\title{Get Default Dictionary}
\description{
  The package \pkg{wordnet} tries to locate a valid WordNet installation
  on start up by investigating the \env{WNHOME} environment variable and
  by trying default installation locations.  On success it acquires a 
  pointer to the actual WordNet dictionary and stores internally a
  reference to the dictionary instance. \code{getDict} returns this
  default reference.
}
\usage{
getDict()
}
\details{
  You can manually point the package to the WordNet installation via
  \code{\link{setDict}}.
}
\value{
  A dictionary instance.
}
\references{
  C. Fellbaum (1998).
  \emph{WordNet: An Electronic Lexical Database}.
  Cambridge, MA: MIT Press.
  \url{https://mitpress.mit.edu/9780262561167/}

  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{https://sites.google.com/site/mfwallace/jawbone}
}
\author{Ingo Feinerer}
\examples{
if(initDict())
  getDict()
}
\keyword{file}
