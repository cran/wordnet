\name{synonyms}
\alias{synonyms}
\title{Get Synonyms for a Word}
\description{
Get synonyms for a given word.
}
\usage{
synonyms(word, pos)
}
\arguments{
  \item{word}{The input word.}
  \item{pos}{Part of speech type.
    Must be either \code{"ADJECTIVE"}, \code{"ADVERB"}, \code{"NOUN"},
    or \code{"VERB"}.}
}
\value{
  A character vector holding the synonyms for the given word.
}
\author{Ingo Feinerer}
\seealso{\code{\link{getSynonyms}}}
\examples{
if(initDict())
  synonyms("company", "NOUN")
}
\keyword{file}
