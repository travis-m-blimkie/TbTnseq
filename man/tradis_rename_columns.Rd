\name{tradis_rename_columns}

\alias{tradis_rename_columns}

\title{
  Tradis: Renames count columns
}

\description{
  Renames count column of Tradis results to be unique for every condition and
  replicate being analyzed. Facilitates joins and subsequent steps.
}

\usage{
tradis_rename_columns(input_list, cond_name)
}

\arguments{
  \item{input_list}{  List of data framses, corresponding to all replicates of
    a given condition.}
  \item{cond_name}{   Name of the condition/treatment. Will be prefixed to the
    count column name.}
}

\value{
  \item{tradis_rename_columns}{   A list of data frames, with the count colums
        named to be unique the condition and replicate.}
}

\references{
  None.
}


\examples{

}

\keyword{functions}
