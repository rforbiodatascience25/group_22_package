#' Generate a random DNA sequence
#'
#' The function generates a random DNA sequence of a specified length imputed and
#' using the nucleotides A, T, G, and C.
#'
#' @param sequence_length Integer specifying the length of the DNA sequence to generate.
#'
#' @return A string representing the randomly generated DNA sequence using A, T, G, and C nucleotides.
#' @export
#'
#' @examples
#' # Generate a sequence of length 10 with A, T, G, and C nucleotides.
#' generate_dna_sequence(10)
#'
#' # Generate a sequence of length 50 with A, T, G, and C nucleotides.
#' generate_dna_sequence(50)
generate_dna_sequence <- function(sequence_length) {
  nucleotides <- sample(c("A", "T", "G", "C"), size = sequence_length, replace = TRUE)
  dna_sequence <- paste0(nucleotides, collapse = "")
  return(dna_sequence)
}

