test_that("make_names() doesn't clean column names correctly", {
  messy_col_names <- c("X   ", "_X_", ".X.", "__X__", "..X..", "_", "6")
  df_messy_col_names <- data.frame(matrix(ncol = length(messy_col_names), nrow = 0))
  colnames(df_messy_col_names) <- messy_col_names

  correct_col_names <- c("X","X1","X2","X3","X4","X5", "X6")
  df_correct_col_names <- data.frame(matrix(ncol = length(messy_col_names), nrow = 0))
  colnames(df_correct_col_names) <- correct_col_names

  df_cleaned_col_names <- make_names(df = df_messy_col_names)
  expect_equal(correct_col_names, colnames(df_cleaned_col_names))
})

test_that("make_names() doesn't format column names typography correctly", {
  messy_col_names <- c("XXX", "xxx")
  df_messy_col_names <- data.frame(matrix(ncol = length(messy_col_names), nrow = 0))
  colnames(df_messy_col_names) <- messy_col_names

  # check small letter formating
  correct_col_names <- c("xxx", "xxx")
  df_correct_col_names <- data.frame(matrix(ncol = length(messy_col_names), nrow = 0))
  colnames(df_correct_col_names) <- correct_col_names

  df_cleaned_col_names <- make_names(df = df_messy_col_names, typo = "small")
  expect_equal(correct_col_names, colnames(df_cleaned_col_names))

  # check capital letter formating
  correct_col_names <- c("XXX", "XXX")
  df_correct_col_names <- data.frame(matrix(ncol = length(messy_col_names), nrow = 0))
  colnames(df_correct_col_names) <- correct_col_names

  df_cleaned_col_names <- make_names(df = df_messy_col_names, typo = "capital")
  expect_equal(correct_col_names, colnames(df_cleaned_col_names))
})



