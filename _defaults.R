theme_set(
  theme_minimal(base_size = 16) +
  theme(
    panel.grid.minor = element_blank()
  )
)

options(
  ggplot2.discrete.colour = khroma::scale_color_bright,
  ggplot2.discrete.fill = khroma::scale_fill_bright,
  ggplot2.continuous.colour = khroma::scale_color_batlow,
  ggplot2.continuous.fill = khroma::scale_fill_batlow
)

ptol_blue = "#4477aa"
ptol_red = "#EE6677"

ragg_png <- function(..., res = 150) {
  ragg::agg_png(..., res = res, units = "in")
}

