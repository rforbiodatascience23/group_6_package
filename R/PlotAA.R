#' Aminoacid Histogram
#'
#' @param peptide sequence of aminoacids
#'
#' @return histogram plot
#' @export
#'
PlotAA <- function(peptide){
  aa <- peptide |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aa, function(amino_acid) stringr::str_count(string = peptide, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["peptide"]] <- rownames(counts)

  aahist <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = peptide, y = Counts, fill = peptide)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(aahist)
}
