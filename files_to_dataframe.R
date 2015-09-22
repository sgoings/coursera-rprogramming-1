files_to_dataframe <- function(directory, id = 1:332) {
  files.list <- paste(directory, "/", sprintf("%03d", id), ".csv", sep = "")
  df <- lapply(files.list, read.csv)
  df <- do.call(rbind, df)
}