source("complete.R")

corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0

  ## Return a numeric vector of correlations
  ## NOTE: Do not round the result!

  corr_file_function <- function(file) {
    data <- read.csv(file)
    completes <- sum(complete.cases(data))
    if (completes > threshold) {
        return (cor(data$nitrate, data$sulfate, use="complete.obs"))
    }
  }

  corr.all <- lapply(list.files(directory, full.names = TRUE), corr_file_function)
  corr.flat <- unlist(corr.all[!sapply(corr.all, is.null)])

  if(is.null(corr.flat)) {
    return (numeric())
  } else {
    return (corr.flat)
  }
}