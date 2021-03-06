# TbTnseq

### Description
R package for running a TnSeq essentiality analysis pipeline. Designed for use with raw TnSeq results from Tradis and Transit (Gumbel) to produce a list of essential genes. Allows the specification of stringency threshold in relation to the number of replicates (e.g. for Tradis, a gene is essential if it has 0 counts in at least 2 of 3 replicates).

### Dependencies
The only dependency is the `tidyverse` set of packages.

### Workflow & Functions
- **tbt_readFiles:** Read in files produced by Tradis or Transit/Gumbel and select appropriate columns, namely gene name and columns denoting essentiality (Read Counts for Tradis, Call for Transit/Gumbel)
- **tbt_rename:** Renames count or call column to be unique for each replicate in a given condition/treatment (user-defined).
- **tbt_essential:** Return a data frame of essential genes for Tradis or Transit/Gumbel.

### Installation
The simplest way to intsall the package is through the `devtools::install_github()` function. One can simply copy and paste the code below into the RStudio console to install and load the package:

`devtools::install_github("travis-m-blimkie/TbTnseq")`  
`library(TbTnseq)`
