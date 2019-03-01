\name{gumbel_counts_summary}

\alias{gumbel_counts_summary}

\title{
  Gumbel: Determine gene essentiality
}

\description{
  Determines essentiality of genes from Gumbel results. Defined essentiality
  based on user-determined level. CURRENTLY SET UP FOR ONLY TWO REPS. Two calls
  of E or one E and one U are considered essential. A new column, named for
  condition, contains "ess" for essential or "non" for non-essential.
}

\usage{
  gumbel_counts_summary(input_df, cond_name, stringency = "EU")
}

\arguments{
  \item{input_df}{  A data framse, corresponding to all replicates of
    a given condition.}
  \item{cond_name}{   Name of the condition/treatment. Will be used for the
    essentiality column name.}
  \item{stringency}{  Desired level of stringency for essentiality assignment.
    EE means the call for both reps must be E. EU considers genes with one E and
    one U essential.}
}

\value{
  \item{gumbel_count_summary}{   A data frame of all genes and their
    essentiality status.}
}

\references{
  None.
}


\examples{

}

\keyword{functions}
