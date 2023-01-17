test_that("binary entropy is not correct computed (max value)", {
  a <- c(1,1,2,2)
  entropy <- entropy(a)
  expect_equal(1, entropy)
})

test_that("binary entropy is not correct computed (min value)", {
  a <- c(1,1,1,1)
  entropy <- entropy(a)
  expect_equal(0, entropy)
})

test_that("Normalized entropy is not correct computed", {
  a <- c(1,1,1,2)
  entropy <- entropy(a, normalize = TRUE)
  expect_equal(0.811278124459133, entropy)
})
