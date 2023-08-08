## code to prepare `supermarket` dataset goes here
load("data-raw/supermarket.RData")

usethis::use_data(supermarket, overwrite = TRUE)
