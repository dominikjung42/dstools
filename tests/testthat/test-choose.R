test_that("random selection of n elements in data frames does not work properly.", {
  df = data.frame(x = c(100,200), y=c("A", "B"))
  sample = choose(df, n=2)
  expect_true(all(do.call(paste0, df) %in% do.call(paste0, sample)))
})

test_that("random selection of n elements with replacement in data frames does not work properly.", {
  df = data.frame(x = c(100,200), y=c("A", "B"))
  sample = choose(df, n=2, replace=TRUE)
  expect_true(all(do.call(paste0, sample) %in% do.call(paste0, df)))
})

test_that("random selection of n elements in vectors does not work properly.", {
  l = c(100,200)
  sample = choose(l, n=2)
  expect_true(all(l %in% sample))
})

test_that("random selection of n elements with replacement in vectors does not work properly.", {
  l = c(100,200)
  sample = choose(l, n=2, replace=TRUE)
  expect_true(all(sample %in% l))
})
