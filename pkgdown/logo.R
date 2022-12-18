library(ggplot2)
library(hexSticker)


boomerangPlot <- ggplot(data = segunda_edicion, mapping = aes(x = val_M,
                                                              y = aro_M)) +
  geom_point(alpha = .11,
             colour = "white") +
  coord_flip() +
  theme_void() +
  theme(legend.position = "none")



sticker(
  filename = "inst/figures/logo.png",
  # subplot aesthetics
  subplot = boomerangPlot,
  s_width = 1.7, s_height = 1.5,
  s_x=1, s_y=1,
  # package name aesthetics
  package = c("iapsArgentina", "iapsArgentina"),
  p_size = c(20,20),
  p_color = c("black", "gold"),
  p_y = 1.2,
  p_x = c(1.01,1),
  # hexagon aesthetics
  h_size = 1,
  h_fill = "lightblue",
  h_color = "black",
  # url aesthetics
  url = "toninif.github.io/iapsArgentina",
  u_size = 5.4,
  u_color = "black"
) |> plot() # preview with plot()
