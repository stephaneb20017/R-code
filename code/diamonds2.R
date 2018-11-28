ggplot(diamonds, aes(x = carat, y = price, col = clarity)) +
  geom_point() +
  geom_smooth()


# The plot you created in the previous exercise
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth()

# Copy the above command but show only the smooth line
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_smooth()


# Copy the above command and assign the correct value to col in aes()
ggplot(diamonds, aes(x = carat, y = price,col = clarity)) +
  geom_smooth()


# Keep the color settings from previous command. Plot only the points with argument alpha.
ggplot(diamonds, aes(x = carat, y = price,col = clarity)) +
  geom_point(aes(alpha = 0.4))




ggplot(data = diamonds) +
geom_point(mapping = aes(x = carat, y = price, col = clarity, alpha = 0.4))


# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# Add a geom layer with + and geom_point()
dia_plot <- dia_plot + geom_point()

# Add the same geom layer, but with aes() inside
dia_plot <- dia_plot + geom_point(aes(col = clarity))

# solution
# Create the object containing the data and aes layers: dia_plot
dia_plot <- ggplot(diamonds, aes(x = carat, y = price))

# Add a geom layer with + and geom_point()
dia_plot <- ggplot(diamonds, aes(x = carat, y = price)) + geom_point()

# Add the same geom layer, but with aes() inside
dia_plot <- ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(col=clarity))


dia_plot <- ggplot(diamonds, aes(x = carat, y = price))
dia_plot <- dia_plot + geom_point(aes(alpha = 0.2))
dia_plot <- dia_plot + geom_smooth(se = FALSE)
  dia_plot                                