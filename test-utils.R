# In file: tests/testthat/test-utils.R

# First, we need to load the function we want to test
source("utils.R")

library(testthat)

test_that("Normalization works on a simple vector (the happy path)", {
  # 1. Setup: Create input and expected output
  input_vector <- c(10, 20, 30)
  expected_output <- c(-1, 0, 1)

  # 2. Action: Run the function
  actual_output <- normalize_vector(input_vector)

  # 3. Expectation: Check if the actual output matches the expected output
  expect_equal(actual_output, expected_output)
})

test_that("Normalization handles NA values correctly", {
  input_with_na <- c(10, 20, 30, NA)
  expected_output <- c(-1, 0, 1, NA)

  actual_output <- normalize_vector(input_with_na)

  # We need to use expect_equal because it knows how to compare NAs
  expect_equal(actual_output, expected_output)
})