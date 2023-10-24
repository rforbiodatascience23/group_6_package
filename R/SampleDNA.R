#' DNA chain generator
#'
#' @param size size of the desired DNA chain.
#'
#' @return It will give a random DNA chain with the desired size.
#' @export
#'
#' @examples 40
SampleDNA <- function(size){
  amicnoacids <- sample(c("A", "T", "G", "C"), size = size, replace = TRUE)
  DNA <- paste0(aminoacids, collapse = "")
  return(DNA)
}
