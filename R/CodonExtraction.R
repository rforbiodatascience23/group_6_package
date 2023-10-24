#' Codon extraction
#'
#' @param dna_sample DNA sample used for extracting codons
#' @param start Starting position for extracting codons
#'
#' @return Vector named codons that contains the extracted codons from the DNA sample
#' @export
#'
#' @examples function that extracts codons from a DNA sample
CodonExtraction <- function(dna_sample, start = 1){
  size <- nchar(dna_sample)
  codons <- substring(dna_sample,
                      first = seq(from = start, to = size-3+1, by = 3),
                      last = seq(from = 3+start-1, to = size, by = 3))
  return(codons)
}
