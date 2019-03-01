\name{tradis_counts_summary}

\alias{tradis_counts_summary}

\title{
  Tradis: Determine gene essentiality
}

\description{
  Determines essentiality of genes from Tradis results. Currently set to define
  essentiality as a given gene having two or more 0-counts across replicates.
  Assigns essentiality as "ess" or "non".
}

\usage{
tradis_counts_summary(input_df, cond_name)
}

\arguments{
  \item{input_df}{  A data framse, corresponding to all replicates of
    a given condition.}
  \item{cond_name}{   Name of the condition/treatment. Will be used for the
    essentiality column name.}
}

\value{
  \item{tradis_count_summary}{   A data frame of all genes and their
    essentiality status.}
}

\references{
  None.
}


\examples{

}

\keyword{functions}
