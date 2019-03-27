
# TbTnseq column renaming function ----------------------------------------

tbt_rename <- function(input_list, cond_name) {

  for (i in 1:length(input_list)) {

    colnames(input_list[[i]])[2] <- paste0(cond_name,
                                           "_",
                                           names(input_list)[i],
                                           "_",
                                           colnames(input_list[[i]])[2])

  }

  return(input_list)

}
