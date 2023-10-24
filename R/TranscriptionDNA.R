#' DNA Transcription
#'
#' @param DNA string of DNA to be transcribed
#'
#' @return returns string object with RNA transcribed from the input DNA.
#' @export
#'
Transcription <- function(DNA){
  RNA <- gsub("T", "U", DNA)
  return(RNA)
}
