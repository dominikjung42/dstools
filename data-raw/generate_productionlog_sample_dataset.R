## code to prepare `productionlog_sample` dataset goes here
productionlog_sample <- readxl::read_excel("data-raw/productionlog_sample.xlsx") %>%
  as.data.frame()

usethis::use_data(productionlog_sample, overwrite = TRUE)
