\name{tbt_essential}

\alias{tbt_essential}

\title{
  Determine gene essentiality
}

\description{
  Call a gene as essential or non-essential based on calls or counts from
  TnSeq programs Tradis or Transit/Gumbel.
}

\usage{
tbt_essential(tool, input_df, cond_name, cutoff)
}

\arguments{
  \item{tool}{  Name of the tools used to produce raw calls or counts.
  Currently supports either "Tradis"" or "Gumbel".}
  \item{input_df}{   Data frame containing the call or count information for
  each genes. Expects standard column names produced by Tradis or Transit/
  Gumbel.}
  \item{cond_name}{ Name of the condition being checked for essentiality.
  Output data frame will have an additional column, named for the condition,
  containing the essential/non-essential call.}
  \item{cutoff}{  Desired cutoff for calling a gene essential. Should be set
  based on the number of replicates, e.g. in the case of three replicates,
  cutoff can be set to 2, specifying an essential call in at least two of
  three replicates for a gene to be considered overall essential.}
}

\value{
  \item{tbt_essential}{   A data frame containing an additional column, named
  from the provided condition, containing either "ess" for essential, or "non"
  for non-essential.}
}

\details{
  By default, a gene is called essential for a given replicate as follows: For
  Tradis, the read counts must be 0. For Transit/Gumbel, the gene must have a
  call of "E".
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