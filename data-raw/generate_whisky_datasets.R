## code to prepare `whiskycollection` dataset goes here
whiskycollection <- readxl::read_excel("data-raw/whiskycollection.xlsx") %>%
  as.data.frame()

usethis::use_data(whiskycollection, overwrite = TRUE)



