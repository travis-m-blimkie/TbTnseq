# Gumbel function for renaming --------------------------------------------

#' Needs to be given a list of data frames, corresponding to one condition and
#' all of its replicates (i.e. bfm-48 reps 1, and 2). The function sticks the
#' condition and replicate number on to the front of the count column. So
#' "Call" would become "bfm48rep1_Call". Gene column name is unchanged.

gumbel_rename_columns <- function(input_list, cond_name) {

  for (i in 1:length(input_list)) {
    colnames(input_list[[i]])[2] <- paste0(cond_name, "_", names(input_list)[i], "_", colnames(input_list[[i]])[2])
  }

  return(input_list)

}
