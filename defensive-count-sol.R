
library(checkmate)


# a) assumptions of supposedly_a_count ------------------------------------


# 1. numeric
# 2. non-negative
# 3. not being NA 
# 4. finite
# 5. length 1



# b) modified count_them function -----------------------------------------


count_them <- function(supposedly_a_count) {
  
  assert_number(supposedly_a_count, lower = 0, finite = TRUE) # assumptions 1-5
  
  if (!checkmate::test_count(supposedly_a_count)) {
    warning(
      "rounding ", supposedly_a_count,
      " to the nearest integer."
    )
    supposedly_a_count <- round(supposedly_a_count)
  }

  as.integer(supposedly_a_count) # returning into integer to get results equal to "nL"
}






