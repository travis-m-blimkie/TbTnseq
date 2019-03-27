
# Determine essentiality function -----------------------------------------

tbt_essential <- function(tool, input_df, cond_name, cutoff) {

  # Required libraries
  require(tidyverse)

  # Stop and print error if tool specified incorrectly
  if (tool %in% c("Gumbel", "Tradis") == F) {
    stop('Please enter either "Gumbel" or "Tradis" for tool.')
  }

  # Deal with NSE
  cond_name <- enquo(cond_name)


  if (tool == "Gumbel") {

    # Code for Gumbel
    output_df <- input_df %>%
      mutate(., sum_counts_E = rowSums(. == "E")) %>%
      mutate(., !!cond_name := case_when(sum_counts_E >= cutoff ~ "ess", TRUE ~ "non"))

  } else if (tool == "Tradis") {

    # Code for Tradis
    output_df <- input_df %>%
      mutate(., sum_counts_0 = rowSums(select_if(.tbl = ., .predicate = is.numeric) == 0)) %>%
      mutate(., !!cond_name := case_when(sum_counts_0 >= cutoff ~ "ess", TRUE ~ "non"))

  }

  return(output_df)

}
