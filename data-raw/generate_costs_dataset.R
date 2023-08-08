## code to prepare `costs` dataset goes here
costs <- readxl::read_excel("data-raw/costs.xlsx") %>%
  as.data.frame()

usethis::use_data(costs, overwrite = TRUE)
