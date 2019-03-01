
# Gumbel count summary function -------------------------------------------

gumbel_counts_summary <- function(input_df, cond_name, num_reps) {

  cond_name <- enquo(cond_name)

  sum_count_df <- input_df %>%
    mutate(., sum_counts_E = rowSums(. == "E")) %>%
    mutate(., !!cond_name := case_when(sum_counts_E == num_reps ~ "ess",
                                         TRUE ~ "non")
           ) %>%
    select(., locus_tag, !!cond_name)

  return(sum_count_df)

}
