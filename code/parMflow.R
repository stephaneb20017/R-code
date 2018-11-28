op <- par(mfrow = c(2, 2), # 2 x 2 pictures on one plot
          pty = "s")       # square plotting region,
# independent of device size

## At end of plotting, reset to previous settings:
par(op)

## Alternatively,
op <- par(no.readonly = TRUE) # the whole list of settable par's.
## do lots of plotting and par(.) calls, then reset:
par(op)
## Note this is not in general good practice

par("ylog") # FALSE
plot(1 : 12, log = "y")
par("ylog") # TRUE

plot(1:2, xaxs = "i") # 'inner axis' w/o extra space
par(c("usr", "xaxp"))

( nr.prof <-
    c(prof.pilots = 16, lawyers = 11, farmers = 10, salesmen = 9, physicians = 9,
      mechanics = 6, policemen = 6, managers = 6, engineers = 5, teachers = 4,
      housewives = 3, students = 3, armed.forces = 1))
par(las = 3)
barplot(rbind(nr.prof)) # R 0.63.2: shows alignment problem
par(las = 0)  # reset to default

require(grDevices) # for gray
## 'fg' use:
plot(1:12, type = "b", main = "'fg' : axes, ticks and box in gray",
     fg = gray(0.7), bty = "7" , sub = R.version.string)

ex <- function() {
  old.par <- par(no.readonly = TRUE) # all par settings which
  # could be changed.
  on.exit(par(old.par))
  ## ...
  ## ... do lots of par() settings and plots
  ## ...
  invisible() #-- now,  par(old.par)  will be executed
}
ex()

## Line types
showLty <- function(ltys, xoff = 0, ...) {
  stopifnot((n <- length(ltys)) >= 1)
  op <- par(mar = rep(.5,4)); on.exit(par(op))
  plot(0:1, 0:1, type = "n", axes = FALSE, ann = FALSE)
  y <- (n:1)/(n+1)
  clty <- as.character(ltys)
  mytext <- function(x, y, txt)
    text(x, y, txt, adj = c(0, -.3), cex = 0.8, ...)
  abline(h = y, lty = ltys, ...); mytext(xoff, y, clty)
  y <- y - 1/(3*(n+1))
  abline(h = y, lty = ltys, lwd = 2, ...)
  mytext(1/8+xoff, y, paste(clty," lwd = 2"))
}
showLty(c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash"))
par(new = TRUE)  # the same:
showLty(c("solid", "44", "13", "1343", "73", "2262"), xoff = .2, col = 2)
showLty(c("11", "22", "33", "44",   "12", "13", "14",   "21", "31"))


par()

par(mfrow = c(2,2))
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
plot(shop$size_dist, shp$sales)

par(mfcol = c(2,2))
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
plot(shop$size_dist, shp$sales)

#reset the grid
par(mfrow = c(1,1))

#layout expects a matrix
grid <- matrix(c(1,1,2,3), nrow = 2, 
                           ncol = 2, byrow = TRUE)

grid
layout(grid)
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
plot(shop$size_dist, shp$sales)

#reset the grid
layout(1)
par(mfcol = c(1,1))

#reset is tedious, so you can reset all parameter this way
old_par <- par()

par(col = "red")
plot(shop$ads, shop$sales)
par(old_par) #reset with a variable

#stack graphical elements

plot(shop$ads, shops$sales,
     pch = 16, col = 2,
     xlab = "advertisement",
     ylab = "net sales")

#build a model
#lm is used to fit linear models. 
#It can be used to carry out regression, single stratum analysis of variance 
#and analysis of covariance (although aov may provide a more convenient interface for these).

lm_sales <- lm(shop$sales ~ shop$ads)

#This function adds one or more straight lines through the current plot.
# lwd = line width
abline(coef(lm_sales), lwd = 2)

#we can supercharge our plot with functions
#point() segment() lines() text()
lines(shop$ads, shop$sales)


ranks <- order(shop$ads)
plot(shop$ads, shop$sales,
     pch = 16, col = 2,
     xlab = "advertissement",
     ylab = "net sales")

abline(coef(lm_sales),lwd = 2)
lines(shop$ads[ranks], shop$sales[ranks])



#last lab !!!!!! 
###############################################################
# movies is pre-loaded in your workspace

# List all the graphical parameters
par()

# Specify the mfrow parameter
par(mfrow = c(2,1))

# Build two plots
plot(movies$votes,movies$rating)
hist(movies$vote, breaks = "Sturges")

###############################################################

# movies is pre-loaded in your workspace

# Build the grid matrix
grid <- matrix(c(1,2,3,3), nrow = 2)


# Specify the layout
layout(grid)

# Build three plots
plot(movies$rating, movies$runtime)
plot(movies$votes, movies$runtime)
boxplot(movies$runtime)

###############################################################

# movies is pre-loaded in your workspace

# Build the grid matrix
grid <- matrix(c(1, 2, 3, 3), nrow = 2)

# Specify the layout
layout(grid)

# Customize the three plots
plot(movies$rating, movies$runtime,
     xlab = "Rating",
     ylab = "Runtime",
     pch = 4)


plot(movies$votes, movies$runtime,
     xlab = "Number of Votes",
     ylab = "Runtime",
     col = "blue")


boxplot(movies$runtime, border = "darkgray",
        main = "Boxplot of Runtime")

###############################################################

# movies is pre-loaded in your workspace

# Fit a linear regression: movies_lm
movies_lm <- lm(movies$rating ~ movies$votes)

# Build a scatterplot: rating versus votes
plot(movies$votes,movies$rating)

# Add straight line to scatterplot
abline(coef(movies_lm),lwd = 2)


###############################################################

# movies is pre-loaded in your workspace

# Fit a linear regression (don't change)
movies_lm <- lm(movies$rating ~ movies$votes)

# Customize scatterplot
plot(movies$votes, movies$rating,
     main = "Analysis of IMDb data",
     xlab = "Number of Votes",
     ylab = "Rating",
     pch = 15,
     col = "darkorange",
     cex = 0.7)


# Customize straight line
abline(coef(movies_lm), lwd = 2,col = "red")

# Add text
text(xco <- 7e5,
     yco <- 7,
     label ="More votes? Higher rating!")