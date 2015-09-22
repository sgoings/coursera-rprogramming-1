source("files_to_dataframe.R")

complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases

  dataframe <- files_to_dataframe(directory, id)
  completes <- dataframe[complete.cases(dataframe[,2:3]),]

  # final <- data.frame( "id" = integer(), "nobs" = integer() )

  resultant <- lapply(id, function(x) { c(x, nrow(completes[completes$ID == x,])) } )

  final <- as.data.frame(do.call(rbind, resultant))

  names(final) <- c("id", "nobs")

  final
}