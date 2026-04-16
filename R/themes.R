#!/usr/bin/env Rscript

#' UU theme
#'
#' Utrecht University figure theme

uu_theme <- function() {
  theme_classic() +
    theme(
      plot.title = element_text(family = "Merriweather", color = "black", size = 16),
      text = element_text(family = "Open Sans", color = "grey10"),
      plot.background = element_rect(color = "#FFCD00"),
    )
}