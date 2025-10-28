testthat::test_that("output is correct", {
  testthat::expect_equal(codon("AATCGA"), c("AAT", "CGA"))
  testthat::expect_equal(codon("AATCG"), "AAT")
  testthat::expect_equal(codon("AATCGA", start=2), "ATC")
})

testthat::test_that("empty or less than 3 bases return empty str", {
  testthat::expect_equal(codon(""), "")
  testthat::expect_equal(codon("AT"), "")
})

testthat::test_that("uses tidyverse recycling rules", {
  testthat::expect_error(codon(5), "`sequence` must be a single character string.")
  testthat::expect_error(codon("AAT", start="start"), "`start` must be a single positive integer.")
})
