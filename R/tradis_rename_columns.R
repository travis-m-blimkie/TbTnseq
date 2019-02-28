# Tradis function to rename the columns of each data frame ----------------

#' Needs to be given a list of data frames, corresponding to one condition and
#' all of its replicates (i.e. MHB reps 1, 2, and 3). The function sticks the
#' condition and replicate number on to the front of the count column. So
#' "ins_count" would become "MHBrep1_ins_count". Gene column name is unchanged.

tradis_rename_columns <- function(input_list, cond_name) {

  for (i in 1:length(input_list)) {
    colnames(input_list[[i]])[2] <- paste0(cond_name, "_", names(input_list)[i], "_", colnames(input_list[[i]])[2])
  }

  return(input_list)

}
