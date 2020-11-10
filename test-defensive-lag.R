
library(testthat)

# test cases for lag_modified ---------------------------------------------

test_that("lag_modified creates the right errors", {
  expect_error(lag(c(3, 6, 7), n = 5)) # wrong length of lag 
  expect_error(lag(c(3, 6, 7), n = TRUE)) # wrong type of lag
  expect_error(lag(list(1:5, letters[1:5]))) # type 'list'
  expect_error(lag(matrix(c(1, 2, 3, 11, 12, 13)))) # type 'matrix'
  expect_error(lag(data.frame(x = 6:15, y = 1:10))) # type 'data.frame'
})
