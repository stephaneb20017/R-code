ggplot(mammals, aes(x = body, y = brain)) +
  geom_point(alpha = 0.6) +
  coord_fixed() +
  scale_x_log10() +
  scale_y_log10() +
  stat_smooth(method = "lm",
              col = "#C42126",
              se = FALSE, size = 1)
  
