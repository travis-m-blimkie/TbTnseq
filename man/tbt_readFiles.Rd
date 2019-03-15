\name{tbt_readFiles}

\alias{tbt_readFiles}

\title{
  Read files from TnSeq programs
}

\description{
  Read the file produced by Tradis or Transit/Gumbel TnSeq pipelines. Also
  selects the gene name and call or count columns for subsequent use.
}

\usage{
tbt_readFiles(tool, conditions, reps, data_folder)
}

\arguments{
  \item{tool}{  Specify tool that produced the results files, either "Tradis" or "Gumbel".}
  \item{conditions}{   Names of the conditions, which must match to file names
        being read.}
  \item{reps}{  Number of replicates, which should be the same as the number of files
        for a given condition.}
  \item{data_folder}{ Folder containing all of the files for each condition
        and all its replicates. Should NOT end with "/".}
}

\value{
  \item{tbt_readFiles}{   A list of the conditions, holding a list of the
  replicates for that condition, with the data stored in a data frame. I.e.
  a list of list of data frames.}
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
