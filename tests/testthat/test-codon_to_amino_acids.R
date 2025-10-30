test_that("codon_to_amino_acids translates every codon correctly", {
  for (codon in names(aminoAcids)) {
    expect_equal(
      codon_to_amino_acids(codon),
      aminoAcids[[codon]],
      info = paste("Codon:", codon)
    )
  }
})
