\name{synonyms}
\alias{synonyms}
\title{Get synonyms for a word}
\description{
Get synonyms for a given word.
}
\usage{
synonyms(dict, word)
}
\arguments{
  \item{dict}{A WordNet dictionary.}
  \item{word}{The input word.}
}
\value{
  A character vector holding the synonyms for the given word.
}
\author{Ingo Feinerer}
\seealso{\code{\link{getSynonyms}}}
\examples{
validInstallation <- initDict()
if (validInstallation) {
    dict <- getDictInstance()
    synonyms(dict, "company")
}}
\keyword{file}
