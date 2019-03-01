# Tradis function to get summary of counts and filter ---------------------

#' Given a data frame, count the number of 0 counts for each gene, and place
#' this number in a new column, "sum_counts". Designed to only count numeric
#' columns, so it should not count the gene name column.
#' Creates an additional column, named for the condition, denoting whether that
#' gene is "ess" or "non", based on chosen threshold (2 for now).

tradis_counts_summary <- function(input_df, cond_name) {

  cond_name <- enquo(cond_name)

  output_df <- input_df %>%
    mutate(., sum_counts = rowSums(select_if(.tbl = ., .predicate = is.numeric) == 0)) %>%
    mutate(., !!cond_name := case_when(sum_counts >= 2 ~ "ess",
                                       TRUE ~ "non")) %>%
    select(., locus_tag, !!cond_name)

  return(output_df)

}
