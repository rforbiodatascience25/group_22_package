library(testthat)

test_that("generate_dna_sequence returns correct length", {

  sequence <- generate_dna_sequence(10)

  # Test: The sequence has the correct number of nucleotides
  expect_equal(nchar(sequence), 10)
})






