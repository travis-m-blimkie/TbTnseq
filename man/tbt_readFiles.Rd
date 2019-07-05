\name{tbt_readFiles}

\alias{tbt_readFiles}

\title{
  Read files from TnSeq output
}

\description{
Given a directory containing data files and list of conditions, read the files
produced by Tradis or Transit/Gumbel TnSeq pipelines and select the gene name
and call or count columns.
}

\usage{
tbt_readFiles(tool, conditions, reps, data_folder)
}

\arguments{
  \item{tool}{  Specify tool that produced the results files, either "Tradis" or
        "Gumbel".}
  \item{conditions}{   Names of the conditions, which must match to file names
        being read.}
  \item{reps}{  Number of replicates, which should be the same as the number of files
        for a given condition.}
  \item{data_folder}{  Folder containing all of the files for each condition and
        all its replicates. Should NOT end with "/".}
}

\details{
Designed as the first step in a pipeline to determine essential genes from
Tradis or Transit/Gumbel. After this step, count or call column (depending on
the tool) should be renamed to be unique to each condition/replicate. This can
be done using \code{TbTnseq::tbt_rename()}.
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
# Set up required info
conditions <- list("MHB_unt", "MHB_AZM")

reps <- c("rep1", "rep2", "rep3")

tradis_path <- "Data/Tradis"

# Run tbt_readFiles()
tradis_select_dfs <- tbt_readFiles(tool = "Tradis",
                                   conditions = conditions,
                                   reps = reps,
                                   data_folder = tradis_path)
}

\keyword{functions}
