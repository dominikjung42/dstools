## code to prepare `car_maintenance` dataset goes here
car_maintenance <- readxl::read_excel("data-raw/car_maintenance.xlsx") %>%
as.data.frame()

usethis::use_data(car_maintenance, overwrite = TRUE)
