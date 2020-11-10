remotes::install_github("fabian-s/checklist")
## solution to defensive-lag-ex ##

library(checkmate)
library(checklist)



# modified lag funciton ---------------------------------------------------


lag <- function(x, n = 1L) {
  
  xlen <- length(x)
  
  if (xlen < n) {
    stop("lag is greater than the length of x")
  }
  
  assert_atomic_vector(x) 
  # x should be a vector - either logical, integer, numeric, complex or character
  
  assert_count(n) # lag should be a count  
  
  c(rep(NA, n), x[seq_len(xlen - n)])
}



# test cases --------------------------------------------------------------


testthat::test_file("test-defensive-lag.R")


checklist::checklist(
  system.file("", package = "checklist")
)
