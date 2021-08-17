test_that("make_names does not formats column names correctly", {
  df_messy_col_names <- data.frame(small_letters = c(1))
  df_perfect_col_names <- data.frame(SMALL_LETTERS = c(1))

  df_cleaned_col_names <- make_names(df_messy_col_names)
  expect_equal(df_perfect_col_names, df_cleaned_col_names)
})

