theme_set(
  theme_minimal(base_size = 16) +
  theme(
    panel.grid.minor = element_blank(),
    aspect.ratio = 2/(1+sqrt(5))
  )
)

theme_no_y <- function(){
  theme(
    axis.text.y = element_blank(),
    axis.title.y = element_blank(),
    panel.grid.major.y = element_blank()
  )
}


options(
  ggplot2.discrete.colour = khroma::scale_color_bright,
  ggplot2.discrete.fill = khroma::scale_fill_bright,
  ggplot2.continuous.colour = khroma::scale_color_batlow,
  ggplot2.continuous.fill = khroma::scale_fill_batlow,
  ggplot2.ordinal.colour = \(...) rcartocolor::scale_color_carto_d(palette = "TealGrn"),
  ggplot2.ordinal.fill =  \(...) rcartocolor::scale_color_carto_d(palette = "TealGrn")
)

ptol_blue = "#4477aa"
ptol_red = "#EE6677"

ragg_png <- function(..., res = 150) {
  ragg::agg_png(..., res = res, units = "in")
}

knitr::knit_hooks$set(crop = knitr::hook_pdfcrop)
