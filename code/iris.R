levels(iris$Species) <- c("Setosa", "Versicolor", "Virginica")
library(grid)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
# previous code left out
coord_equal ( ) +
theme(panel.background = element_blank(),
        plot.background = element_blank(),
        legend.background = element_blank(),
        legend.key = element_blank(),
        strip.background = element_blank(),
        axis.text = element_text(colour = "black"),
        axis.ticks = element_line(colour = "black"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"),
        strip.text = element_blank(),
        panel.spacing = unit(1, "lines")
)