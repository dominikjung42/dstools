## code to prepare `whiskycollection` dataset goes here
whisky_collection <- readxl::read_excel("data-raw/whiskycollection.xlsx") %>%
  as.data.frame()

usethis::use_data(whisky_collection, overwrite = TRUE)

