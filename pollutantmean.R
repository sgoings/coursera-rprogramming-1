source("files_to_dataframe.R")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used

  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!

  if(!is.character(directory) || length(directory) > 1) {
    stop("directory is not a character vector of length 1")
  }

  if(!is.character(pollutant)) {
    stop("pollutant is not a character vector")
  }

  data <- files_to_dataframe(directory, id)
  data.subset <- subset(data, ID %in% id)

  mean(data.subset[,pollutant], na.rm = TRUE)
}
