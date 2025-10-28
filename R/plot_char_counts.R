#' Title
#'
#' @param input
#'
#' @returns
#' @export
#'
#' @examples
plot_char_counts <- function(input){
  unique_chars <- input |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_chars, function(amino_acid) stringr::str_count(string = input, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["unique_chars"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Character, y = Counts, fill = Character)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}
