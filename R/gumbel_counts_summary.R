
# Gumbel count summary function -------------------------------------------

#' Given a data frame, count the number of E/U's for each gene, and place
#' this number in two new columns, "sum_counts_E" and "sum_counts_U". Rows are
#' then given another new column, named based on the condition, which denotes
#' essential status based on the number of E or U calls present. Essentiality
#' denoted with "ess", "non" for non-essential.


gumbel_counts_summary <- function(input_df, cond_name, stringency = "EU") {

  cond_name <- enquo(cond_name)

  if (stringency == "EU") {

    sum_count_df <- input_df %>%
      mutate(., sum_counts_E = rowSums(. == "E"),
             sum_counts_U = rowSums(. == "U")) %>%
      mutate(., !!cond_name := case_when(sum_counts_E == 2 ~ "ess",
                                         sum_counts_E == 1 & sum_counts_U == 1 ~ "ess",
                                         TRUE ~ "non")
      ) %>%
      select(., locus_tag, !!cond_name)

  } else if (stringency == "EE") {

    sum_count_df <- input_df %>%
      mutate(., sum_counts_E = rowSums(. == "E")) %>%
      mutate(., !!cond_name := case_when(sum_counts_E == 2 ~ "ess",
                                         TRUE ~ "non")
      ) %>%
      select(., locus_tag, !!cond_name)

  }

  return(sum_count_df)

}
