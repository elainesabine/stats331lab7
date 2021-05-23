context("Means")

test_that("sample mean", {
  vec <- runif(100)
  result <- sample_mean(vec, 50)
  
  expected <- 0.4503234
  expect_equal( result, expected)
})