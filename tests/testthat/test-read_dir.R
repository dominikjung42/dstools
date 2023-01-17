test_that("Reading single xlsx files doesn't work correctly", {
  dataset_all <- read_dir(dir = test_path("files"), type = "xlsx", pattern = "test")
  expect_equal(dataset_all$ID, "A1")
})

test_that("Reading multiple xlsx files doesn't work correctly", {
  dataset_all <- read_dir(dir = test_path("files"), type = "xlsx")
  expect_equal(dataset_all$ID, "A1")
})
