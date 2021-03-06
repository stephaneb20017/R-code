library(plotly)
set.seed(100)
d <- diamonds[sample(nrow(diamonds), 1000),]
plot_ly(d, x = ~carat, Y = ~price, color = ~carat,
          size = ~carat, text = ~paste("Clarity: ", clarity))