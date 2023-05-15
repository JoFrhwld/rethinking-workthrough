theme_set(
  theme_minimal(base_size = 16) +
  theme(
    panel.grid.minor = element_blank()
  )
)

ragg_png <- function(..., res = 150) {
  ragg::agg_png(..., res = res, units = "in")
}
