ggplot(data=mpg) +
geom_point(mapping = aes(x = displ, y = hwy, alpha = class), color = "blue") +
facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(drv ~ cyl)