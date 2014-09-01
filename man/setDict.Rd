\name{setDict}
\alias{setDict}
\title{Set Default Dictionary}
\description{
  The package \pkg{wordnet} tries to locate a valid WordNet installation
  on start up by investigating the \env{WNHOME} environment variable and
  by trying default installation locations.  On success it acquires a 
  pointer to the actual WordNet dictionary and stores internally a
  reference to the dictionary instance.  However, if this procedure does
  not work automatically in your environment, you can provide the path
  to the WordNet installation and set the internal default reference via
  this function.
}
\usage{
setDict(pathData)
}
\arguments{
  \item{pathData}{Path to the WordNet data files.}
}
\value{
  A dictionary instance.
}
\references{
  C. Fellbaum (1998).
  \emph{WordNet: An Electronic Lexical Database}.
  Cambridge, MA: MIT Press.
  \url{http://mitpress.mit.edu/books/wordnet}

  M. Wallace (2007).
  Jawbone Java WordNet API.
  \url{http://mfwallace.googlepages.com/jawbone}
}
\author{Ingo Feinerer}
\examples{
\dontrun{setDict("/usr/local/WordNet-3.0/dict")}
}
\keyword{file}
