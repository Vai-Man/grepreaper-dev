library(testthat)
library(grepreaperTest)

test_that("grep_count works correctly", {
  data.table::fwrite(ggplot2::diamonds, "test_diamonds.csv")
  
  expect_gt(grep_count("VS", "test_diamonds.csv"), 0)  # Should return a positive count
  expect_error(grep_count("ZZZ", "non_existent.csv"))  # Should throw an error
  
  unlink("test_diamonds.csv")  # Cleanup
})
