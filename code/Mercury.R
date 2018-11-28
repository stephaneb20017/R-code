temperature <- c(0,20,40,60,80,100,120,140,160,180,200)
pressure <- c(0.0002,0.0012,0.0060,0.300,0.0900,0.2700,0.7500,1.8500,4.2000,8.8000,17.3000)
mercury <- data.frame(temperature, pressure, stringsAsFactors = FALSE)


plot(mercury$temperature, mercury$pressure)

plot(mercury$temperature, mercury$pressure,
     xlab = "Temperature",
     ylab = "Pressure",
     main = "T vs P for Mercury",
     type = "o",
     col = "orange")

plot(mercury$temperature, mercury$pressure, col = "darkgreen")

?par
par()
par(col = "blue")
plot(mercury$temperature, mercury$pressure)
par()$col


plot(mercury$temperature, mercury$pressure,
     xlab = "Temperature",
     ylab = "Pressure",
     main = "T vs P for Mercury",
     type = "o",
     col = "orange",
     col.main = "darkgray",
     cex.axis = 0.6,
     lty = 5,
      pch = 4)

#exo 1 lesson 8
# movies is pre-loaded in your workspace

# Create a customized plot
plot(movies$votes,movies$runtime,
     xlab = "Number of votes [-]",
     ylab = "Runtime [s]",
     main = "Votes versus Runtime",
     sub = "No clear correlation")



# movies is pre-loaded in your workspace

# Customize the plot further
plot(movies$votes, movies$runtime,
     main = "Votes versus Runtime",
     xlab = "Number of votes [-]",
     ylab = "Runtime [s]",
     sub = "No clear correlation",
     col = "#dd2d2d",
     col.main = 604,
     pch = 9)



# movies is pre-loaded in your workspace

# Customize the plot further
plot(movies$votes, movies$year,
     main = "Are recent movies voted more on?",
     xlab = "Number of votes [-]",
     ylab = "Year [-]",
     col = "orange",
     cex.axis = 0.8,
     pch = 19)




# Add the exp vector as a column experience to salaries
salaries$experience <- exp

#or
#salaries[["experience"]] <- exp

# Filter salaries: only keep degree == 3: salaries_educ
salaries_educ <- salaries[salaries$degree == 3, ]


# Create plot with many customizations #####TRICKY to use the filter on the plot 
plot(salaries_educ$experience,salaries_educ$salary,
     main = "Does experience matter?",
     xlab = "Work experience",
     ylab = "Salary",
     col = "blue",
     col.main = "red",
     cex.axis = 1.2)
