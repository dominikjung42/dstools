test_that("clear_workspace does not delete all variables from environment", {
  clear_workspace()
  expect_equal(length(ls()), 0)
})
