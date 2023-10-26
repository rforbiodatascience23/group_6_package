test_that("CodonExtraction works", {
  expect_equal(CodonExtraction("AGGCATGCC", start = 1), c("AGG","CAT","GCC"))
})
