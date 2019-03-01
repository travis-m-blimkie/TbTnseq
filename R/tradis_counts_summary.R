# Tradis function to get summary of counts and filter ---------------------

tradis_counts_summary <- function(input_df, cond_name, num_reps) {

  cond_name <- enquo(cond_name)

  output_df <- input_df %>%
    mutate(., sum_counts = rowSums(select_if(.tbl = ., .predicate = is.numeric) == 0)) %>%
    mutate(., !!cond_name := case_when(sum_counts == num_reps ~ "ess",
                                       TRUE ~ "non")) %>%
    select(., locus_tag, !!cond_name)

  return(output_df)

}
