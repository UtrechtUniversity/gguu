#!/usr/bin/env Rscript

#' UU theme
#'
#' Utrecht University figure theme

uu_theme <- function(font.size = 12, line.size = 0.5) {
  thm <- theme_classic() +
    theme(
      plot.title = element_text(
        family = "Merriweather",
        color = "black",
        size = font.size * 1.3
      ),
      text = element_text(
        family = "Open Sans",
        color = "grey10",
        size = font.size,
        hjust = 0.5,
        vjust = 0.5,
        lineheight = 1
      ),
      axis.text = element_text(
        family = "Open Sans",
        colour = "grey10",
        size = font.size,
        hjust = 0.5,
        vjust = 0.5,
        lineheight = 1
      ),
      legend.title = element_text(
        family = "Open Sans",
        colour = "grey10",
        size = font.size * 1.2,
        hjust = 0,
        vjust = 0.5,
        lineheight = 1
      ),
      legend.text = element_text(
        family = "Open Sans",
        colour = "grey10",
        size = font.size,
        hjust = 0,
        vjust = 0.5,
        lineheight = 1
      ),
      plot.caption = element_text(
        size = font.size,
        face = "italic",
        hjust = 1,
        vjust = 0.5,
        lineheight = 1
      ),
      plot.background = element_rect(color = "#FFCD00"),
      line = element_line(
        colour = "black",
        lineend = "square",
        linetype = "solid",
        linewidth = line.size
      ),
      rect = element_rect(
        fill = NULL,
        colour = "black",
        linetype = "solid",
        linewidth = line.size
      ),
      panel.border = element_blank(), # use no square border around figures
      strip.background = element_blank(), # also use no background colour
    )

  return(thm)
}

#' @export
uu_publication <- function() {
  uu_theme(font.size = 10, line.size = 0.5)
}

#' @export
uu_presentation <- function() {
  uu_theme(font.size = 12, line.size = 0.8)
}

#' @export
uu_poster <- function() {
  uu_theme(font.size = 16, line.size = 1)
}
