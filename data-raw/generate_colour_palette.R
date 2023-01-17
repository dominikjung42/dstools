# code to generate file with colour palettes for colour_palette function
# only for internal usesage
colour_palettes_collection <- read.csv("data-raw/colour_palettes.csv",
                                       header = FALSE,
                                       sep = ";")
colour_palettes_collection <-
  lapply(split(colour_palettes_collection[,-1],
               colour_palettes_collection$V1),
         function(x) x[x != ""])
usethis::use_data(colour_palettes_collection, overwrite = TRUE, internal = TRUE)
save(colour_palettes_collection, file="tests/testthat/files/colour_palettes_collection.RData")
