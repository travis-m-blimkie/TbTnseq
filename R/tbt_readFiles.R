
# TbTnseq read files function ---------------------------------------------

tbt_readFiles <- function(tool, conditions, reps, data_folder) {

  # Required libraries
  require(tidyverse)


  # Prevent "read_csv()" messages
  options(readr.num_columns = 0)


  # Stop and print error if tool specified incorrectly
  if (tool %in% c("Gumbel", "Tradis") == F) {
    stop('Please enter either "Gumbel" or "Tradis" for tool.')
  }


  # Generate list of files to be used
  my_files <- conditions %>%
    map(~list.files(data_folder, pattern = ., full.names = T, ignore.case = T) %>%
          set_names(., reps)) %>%
    set_names(., conditions)


  # Print info for conditions and files for the user
  for (i in 1:length(conditions)) {
    writeLines(paste0(tool, " files for condition ", conditions[i], ":"))
    writeLines(paste0("\t\t", as.character(my_files[[unlist(conditions[i])]])))
    writeLines("")
  }


  # Read files and select columns based on specified tool
  if (tool == "Gumbel") {

    # Read in raw Gumbel files
    raw_dfs <- map(my_files, function(x)
      map(x, function(y)

        read_tsv(y, progress = F)

      )
    )

    # Select Gumbel columns needed for analysis
    select_dfs <- map(raw_dfs, function(x)
      map(x, function(y)

        select(y, locus_tag, Call)

      )
    )

  } else if (tool == "Tradis") {

    # Read Tradis data frames
    raw_dfs <- map(my_files, function(x)
      map(x, function(y)

        read_csv(y)

      )
    )

    # Select Tradis columns needed for analysis
    select_dfs <- map(raw_dfs, function(x)
      map(x, function(y)

        select(y, locus_tag, read_count)

      )
    )
  }

  return(select_dfs)

}
