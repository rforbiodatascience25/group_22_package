#' Plot Counts per Unique Character
#'
#' @param input The input string we want the unique character counts of.
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count

#'
#' @returns A plot of of the counts per unique character contained within the string.
#' @export
plot_char_counts <- function(input){ # Define the function as a function on the input string

  # Take the characters from the string and filter out all duplicates to get unique chars.
  unique_chars <- input |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # Count the amount of each unique character and save it as a data frame.
  counts <- sapply(unique_chars, function(amino_acid) stringr::str_count(string = input, pattern =  amino_acid)) |>
    as.data.frame()

  # Name the count column and add a column for characters
  colnames(counts) <- c("Counts")
  counts[["input"]] <- rownames(counts)

  # Create the Plots, and add the params.
  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = input, y = Counts, fill = input)) + # Stratify by Character
    ggplot2::geom_col() + # Make it a Column Plot
    ggplot2::theme_bw() + # Change theme
    ggplot2::theme(legend.position = "none") # Remove the legend

  return(plot)
}
