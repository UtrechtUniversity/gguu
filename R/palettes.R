#!/usr/bin/env Rscript

#' UU palette
#'
#' Utrecht University colour palette

uu_colours <- list(
  uu_palette = c(
    "#FFE6AB",
    "#F3965E",
    "#AA1555",
    "#6E3B23",
    "#24A793",
    "#5287C6",
    "#001240",
    "#5B2182"
  ),
  emphasis_colours = c(
    "#FFCD00", "#C00A35"
  )
)

uu_palettes <- function(name, n, all_palettes = uu_colours, type = c("discrete", "continuous")) {
  palette <- all_palettes[[name]]
  if (missing(n)) {
    n <- length(palette)
  }
  type <- match.arg(type)
  out <- switch(type,
                continous = grDevices::colorRampPalette(palette)(n),
                discrete = palette[1:n]
  )
  structure(out, name = name, class = "palette")
}

scale_colour_uu_d <- function(name) {
  if (missing(name)) {
    name = "uu_palette"
  }

  ggplot2::scale_colour_manual(values = uu_palettes(name, type = "discrete"))

}

scale_colour_uu_c <- function(name) {
  if (missing(name)) {
    name = "uu_palette"
  }
  ggplot2::scale_colour_gradientn(colours = uu_palettes(
    name = name,
    type = "continuous"
  ))
}

scale_color_uu_c <- scale_colour_uu_c
scale_color_uu_d <- scale_colour_uu_d
