test_that("colour palettes selection is corrupted", {
  selection <- colour_palettes_collection[["porsche"]]
  pal <- c("#000000","#E69f00","#56b4e9","#009e73","#f0e442","#0072b2","#d55e00","#cc79a7","#999999")
  expect_setequal(pal, selection)
})
