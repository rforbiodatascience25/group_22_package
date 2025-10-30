#' Convert codon string into amno acids
#'
#' @param codons Sequence of codons to encode into amino acids
#'
#' @returns The codon string translated into amino acids
#' @export
#'
#' @examples codon_to_amino_acids(c("AUG", "UUU", "GGC"))
codon_to_amino_acids <- function(codons){
  amino_acids <- paste0(aminoAcids[codons], collapse = "")
  return(amino_acids)
}
