# movies is already pre-loaded

# Display the structure of movies
str(movies)

# Plot the genre variable of movies
plot(movies$genre)

# Plot the genre variable against the rating variable
plot(movies$genre,movies$rating)

# movies is already pre-loaded

# Plot the runtime variable of movies
plot(movies$runtime)

# Plot rating (x) against runtime (y)
plot(movies$rating,movies$runtime)

# movies is already pre-loaded

# Create a histogram for rating
hist(movies$rating, breaks = "Sturges")

# Create a histogram for rating, with 20 bins
hist(movies$rating, breaks = 20)


# movies is already pre-loaded

# Create a boxplot of the runtime variable
boxplot(movies$runtime)

# Subset the dateframe and plot it entirely
moviesplot <- data.frame(movies$rating,movies$votes,movies$runtime)
plot(moviesplot)

# Create a pie chart of the table of counts of the genres
countGenre <- table(movies$genre)
pie(countGenre)


# Subset salaries: salaries_educ
salaries_educ <- salaries[salaries$degree == 3, ]


# Create a histogram of the salary column
hist(salaries_educ$salary, breaks = 10)




# movies is pre-loaded in your workspace

# Build a customized histogram
hist(movies$runtime, breaks = 20,
     main = "Distribution of Runtime",
     xlim = c(90, 220),
     xlab = "Runtime [-]",
     col = "cyan",
     border = "red")


