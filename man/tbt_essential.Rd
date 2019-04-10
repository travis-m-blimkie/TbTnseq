\name{tbt_essential}

\alias{tbt_essential}

\title{
  Determine TnSeq Gene Essentiality
}

\description{
  Call a gene as essential or non-essential based on calls or counts from
  TnSeq programs Tradis or Transit/Gumbel.
}

\usage{
tbt_essential(tool, input_df, cutoff)
}

\arguments{
  \item{tool}{  Name of the tools used to produce raw calls or counts.
  Currently supports either "Tradis"" or "Gumbel".}
  \item{input_df}{   Data frame containing the call or count information for
  each gene. Expects standard column names produced by Tradis or Transit/
  Gumbel.}
  \item{cutoff}{  Desired cutoff for calling a gene essential.}
}

\details{
The cutoff should be set based on the number of replicates, e.g. in the case
of three replicates, cutoff can be set to 2, specifying an essential call in
at least two of three replicates for a gene to be considered overall essential.

By default, a gene is called essential for a given replicate as follows: For
Tradis, the read counts must be 0. For Transit/Gumbel, the gene must have a
call of "E". All other values are considered nonessential.
}

\value{
  \item{tbt_essential}{   A data frame containing an additional column
  containing either "ess" for essential, or "non" for non-essential.}
}

\references{
None.
}

\seealso{
\url{https://www.github.com/travis-m-blimkie/TbTnseq}
}

\examples{
tbt_essential(tool = "Tradis",
  input_df = tradis_results,
  cutoff = 2)
}

\keyword{functions}
