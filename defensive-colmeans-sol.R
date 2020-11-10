
library(checkmate)


# modified col_means function ---------------------------------------------


# compute means of all numeric columns in df
# output: a data.frame
col_means <- function(df, na.rm = FALSE) {
  
  if (!test_data_frame(df)) { 
    warning("converting the input into a data.frame")
    df <- as.data.frame(df)
  }
  
  if (any(dim(df) == 0)) {
    warning("data.frame has empty inputs, returning empty data.frame")
    df <- data.frame()
  }
  
  numeric <- vapply(df, is.numeric, logical(1)) 
  numeric_cols <- df[, numeric, drop = FALSE] # drop = FALSE to get a data.frame
  
  if (any(numeric[] == FALSE)) {
    warning("input contains not numeric columns")
    df <- data.frame()
  }
  
  data.frame(lapply(numeric_cols, mean, na.rm = na.rm)) # calculating the mean without NAs
}


testthat::test_file("test-defensive-colmeans.R")
