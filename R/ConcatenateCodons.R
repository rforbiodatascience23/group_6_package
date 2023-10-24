#' Concatenate amino acids values of given key codons into one string 
#'
#' @param key_codons list of key codons from which the amino acids will be merged
#'
#' @return string of amino acids concatenated
#' @export
#' 
#' @examples none

ConcatenateCodons <- function(key_codons){
  
  concatenated_sequence <- paste0(codons[key_codons], collapse = "")
  
  return(concatenated_sequence)}