test_that("Normalize doesn't work, returns wrong min value", {
  v <- c(1:100)
  expect_equal(0, min(normalize(v)))
})

test_that("Normalize doesn't work, returns wrong max value", {
  v <- c(1:100)
  expect_equal(1, max(normalize(v)))
})
