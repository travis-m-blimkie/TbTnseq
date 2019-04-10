
# Determine essentiality function -----------------------------------------

tbt_essential <- function(tool, input_df, cutoff) {

  # Required libraries
  require(tidyverse)

  # Stop and print error if tool specified incorrectly
  if (tool %in% c("Gumbel", "Tradis") == F) {
    stop('Please enter either "Gumbel" or "Tradis" for tool.')
  }


  if (tool == "Gumbel") {

    # Code for Gumbel
    ess_df <- input_df %>%
      mutate(sum_counts_E = rowSums(. == "E")) %>%
      mutate(ess_stat = case_when(sum_counts_E >= cutoff ~ "ess", TRUE ~ "non"))

  } else if (tool == "Tradis") {

    # Code for Tradis
    ess_df <- input_df %>%
      mutate(sum_counts_0 = rowSums(. == 0)) %>%
      mutate(ess_stat = case_when(sum_counts_0 >= cutoff ~ "ess", TRUE ~ "non"))

  }

  # Filter out non-essential genes
  output_df <- ess_df %>%
    filter(ess_stat == "ess")


  return(output_df)

}
