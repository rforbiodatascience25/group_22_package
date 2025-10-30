#' Separate to codons function
#'
#' @param sequence The nucleotide sequence string
#' @param start Position of where to start looking for start codon
#'
#' @returns The function returns the start and end codon of a nucletotide sequence
#' @export
#'
#' @examples
#' codon("AUGGCUUAA")
#' codon("ATTGCA", start=3)
#' codon("ATG")
#' codon("AT")    # returns ""
codon <- function(sequence, start = 1) {

  # Inputs
  if (!is.character(sequence) || length(sequence) != 1) {
    stop("`sequence` must be a single character string.")
  }
  if (!is.numeric(start) || length(start) != 1 || start < 1 || start %% 1 != 0) {
    stop("`start` must be a single positive integer.")
  }

  size <- nchar(sequence)
  if (size < 3) {
    return("")  # <-- exits here for short sequences
  }
  codons <- substring(sequence,
                      first = seq(from = start, to = size - 3 + 1, by = 3),
                      last  = seq(from = start + 2, to = size, by = 3))
  return(codons)
}




