test_that("concatenate codons work", 
          {expect_equal(ConcatenateCodons(c("UGA", "AUG", "CAC", "GGA")), 
                        "_MHG")})
