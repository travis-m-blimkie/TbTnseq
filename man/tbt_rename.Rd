\name{tbt_rename}

\alias{tbt_rename}

\title{
  Renames TnSeq count/call column
}

\description{
  Renames count or call column of TnSeq results to be unique for every
  condition and replicate being analyzed. Facilitates joins and
  subsequent steps.
}

\usage{
tbt_rename(input_list, cond_name)
}

\arguments{
  \item{input_list}{  List of data frames, corresponding to all replicates of
    a given condition. Designed to receive input generated from
    \code{tbt_readFiles()}.}
  \item{cond_name}{   Name of the condition/treatment. Will be prefixed to the
    count column name, along with replicate number.}
}

\value{
  \item{tbt_rename}{  A list of data frames, with the count colums named to be
  unique to the condition and replicate.}
}

\references{
  None.
}

\seealso{
  \url{https://www.github.com/travis-m-blimkie/TbTnseq}
}

\examples{

}

\keyword{functions}
