\name{synonyms}
\alias{synonyms}
\title{Get Synonyms for a Word}
\description{
Get synonyms for a given word.
}
\usage{
synonyms(word)
}
\arguments{
  \item{word}{The input word.}
}
\value{
  A character vector holding the synonyms for the given word.
}
\author{Ingo Feinerer}
\seealso{\code{\link{getSynonyms}}}
\examples{
if(initDict())
  synonyms("company")
}
\keyword{file}
