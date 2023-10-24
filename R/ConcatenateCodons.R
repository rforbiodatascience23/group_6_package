#' Concatenate codons into one string
#'
#' @param codons2 list of codons to be merged
#'
#' @return string of codons concatenated
#' @export
#' 
#' @examples none
#' 
#' @description
#' This function concatenates all the codons into a single string
#' 

ConcatenateCodons <- function(codons2){
  
  concatenated_sequence <- paste0(codons[codons2], collapse = "")
  
  return(concatenated_sequence)
  
}