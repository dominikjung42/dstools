
test_that("List with colour pallettes has been correctly generated", {
  path = test_path("files", "colour_palettes_collection.RData")
  load(path)
  s1 <- length(colour_palettes_collection)
  expect_true(s1 > 1)
})

test_that("number of pals in list_pals is not correct", {
  path = test_path("files", "colour_palettes_collection.RData")
  load(path)
  s1 <- length(colour_palettes_collection)
  s2 <- length(list_pals())
  expect_identical(s1, s2)
})

test_that("naming of pals in list_pals is not correct", {
  path = test_path("files", "colour_palettes_collection.RData")
  load(path)
  n1 <- names(colour_palettes_collection)
  n2 <- list_pals()
  expect_true(any(n1 == n2))
})
