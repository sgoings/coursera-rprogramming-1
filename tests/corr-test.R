source("corr.R")
source("complete.R")

test.corr.sample1 <- function() {
  expected <- c(-0.01896, -0.14051, -0.04390, -0.06816, -0.12351, -0.07589)

  cr <- corr("specdata", 150)

  checkEquals(expected, round(head(cr),5))

  # summary(cr)
  ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ## -0.2110 -0.0500  0.0946  0.1250  0.2680  0.7630
}

test.corr.sample2 <- function() {
  expected <- c(-0.01896, -0.04390, -0.06816, -0.07589, 0.76313, -0.15783)

  cr <- corr("specdata", 400)

  checkEquals(expected, round(head(cr),5))

  # summary(cr)
  ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  ## -0.1760 -0.0311  0.1000  0.1400  0.2680  0.7630
}

test.corr.sample3 <- function() {
  cr <- corr("specdata", 5000)

  checkEquals(0, length(cr))
}

test.corr.sample4 <- function() {
  cr <- corr("specdata")

  checkEquals(323, length(cr))
}
