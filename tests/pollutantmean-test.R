source("pollutantmean.R")

test.pollutantmean.sample1 <- function() {
  checkEquals(4.064, round(pollutantmean("specdata", "sulfate", 1:10), 3))
}

test.pollutantmean.sample2 <- function() {
  checkEquals(1.706, round(pollutantmean("specdata", "nitrate", 70:72), 3))
}

test.pollutantmean.sample3 <- function() {
  checkEquals(1.281, round(pollutantmean("specdata", "nitrate", 23),3))
}
