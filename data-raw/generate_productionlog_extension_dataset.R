## code to prepare `productionlog_extension` dataset goes here
productionlog_extension <- readxl::read_excel("data-raw/productionlog_extension.xlsx") %>%
  as.data.frame()

usethis::use_data(productionlog_extension, overwrite = TRUE)
