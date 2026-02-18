\name{initDict}
\alias{initDict}
\title{Initialize Dictionary}
\description{
  Initializes the WordNet dictionary using the Jawbone Java
  \acronym{API} to WordNet.
}
\usage{
initDict(pathData = "")
}
\arguments{
  \item{pathData}{Path to the WordNet data files.}
}
\details{
  In case the user supplied path is invalid the function tries to find
  the installation itself by investigating the \env{WNHOME} environment
  variable and by trying default installation locations.
}
\value{
  A logical value indicating whether a valid WordNet installation has
  been found.
}
\references{
 \bibshow{wordnet::Fellbaum:1998, wordnet::Wallace:2007}}
\author{Ingo Feinerer}
\examples{
\dontrun{initDict("/usr/local/WordNet-3.0/dict")}
}
\keyword{file}
