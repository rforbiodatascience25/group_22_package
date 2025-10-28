#' Convert a DNA sequence string into an RNA sequence string
#'
#' Given a DNA sequence string, this function returns the corresponding RNA sequence
#' by replacing all T nucleotides with U.
#'
#' @param dna_sequence A string representing a DNA sequence using A, T, G, and C nucleotides.
#'
#' @return A string representing the equivalent RNA sequence with U nucleotides.
#' @export
#'
#' @examples
#' DNA_to_RNA("ATGC")   # returns "AUGC"
DNA_to_RNA <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}

