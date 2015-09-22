source("complete.R")

column_headers=c('id', 'nobs')

test.complete.sample1 <- function() {
  ##   id nobs
  ## 1  1  117

  x <- c(1)
  y <- c(117)
  df = data.frame( "id" = x, "nobs" = y )

  checkEquals(df, complete("specdata", 1))
}

test.complete.sample2 <- function() {
  ##   id nobs
  ## 1  2 1041
  ## 2  4  474
  ## 3  8  192
  ## 4 10  148
  ## 5 12   96

  x <- c(2,4,8,10,12)
  y <- c(1041,474,192,148,96)
  df = data.frame( "id" = x, "nobs" = y )

  checkEquals(df, complete("specdata", c(2, 4, 8, 10, 12)))

}

test.complete.sample3 <- function() {
  ##   id nobs
  ## 1 30  932
  ## 2 29  711
  ## 3 28  475
  ## 4 27  338
  ## 5 26  586
  ## 6 25  463

  x <- c(30,29,28,27,26,25)
  y <- c(932,711,475,338,586,463)
  df = data.frame( "id" = x, "nobs" = y )

  checkEquals(df, complete("specdata", 30:25))
}

test.complete.sample4 <- function() {
  ##   id nobs
  ## 1  3  243

  x <- c(3)
  y <- c(243)

  df = data.frame( "id" = x, "nobs" = y )

  checkEquals(df, complete("specdata", 3))
}

