## code to prepare `whiskycollection` dataset goes here
onlineshop <- readxl::read_excel("data-raw/onlineshop.xlsx") %>%
as.data.frame()

usethis::use_data(onlineshop, overwrite = TRUE)
