blood <- c("B","AB","O","A","O","O","A","B")
blood_factor <- factor(blood)

blood_factor
str(blood_factor)
#R sort levels alphabetically!

#order factor level differently
blood_factor2 <- factor(blood, levels = c("O","A","B","AB"))
blood_factor2

str(blood_factor2)
str(blood_factor)

#rename factor levels
blood <- c("B","AB","O","A","O","O","A","B")
blood_factor <- factor(blood)

levels(blood_factor) <-  c("BT_A","BT_AB","BT_B","BT_O")
blood_factor
factor(blood, labels = c("BT_A","BT_AB","BT_B","BT_O"))


factor(blood,
       levels = c("O","A","B","AB"),
       labels = c("BT_O","BT_A","BT_B","BT","BT_O"))


#nominal versus Ordinal
blood_factor[1] < blood_factor[2]


#ordered factor
tshirt <- c("M","L","S","S","L","M","M","L","M")

tshirt_factor <- factor(tshirt, ordered = TRUE,
                                 levels = c("S","M","L"))
tshirt_factor
#ordered factor!
tshirt_factor[1] < tshirt_factor[2]

# LAB ==================================================================
# Definition of hand_vector
hand_vector <- c("Right", "Left", "Left", "Right", "Left")

# Convert hand_vector to a factor: hand_factor
hand_factor <- factor(hand_vector)

# Display the structure of hand_factor
str(hand_factor)


#levels vs label
my_vector <- c("L", "S", "L", "M", "M")

# Option 1
my_factor <- factor(my_vector)
levels(my_factor) <- c("Large", "Medium", "Small")
my_factor


# Option 2
my_factor <- factor(my_vector,
                    levels = c("S", "M", "L"),
                    labels = c("Small", "Medium", "Large"))

#LAB 2----------------------------------------------------------------------
# Definition of survey_vector
survey_vector <- c("R", "L", "L", "R", "R")

# Encode survey_vector as a factor with the correct names: survey_factor
survey_factor <- factor(survey_vector,
                        levels = c("L","R"),
                        labels = c("Left","Right"))

# Print survey_factor
survey_factor



#lab 3
# Definition of survey_vector and survey_factor
survey_vector <- c("R", "L", "L", "R", "R")
survey_factor <- factor(survey_vector, levels = c("R", "L"), labels = c("Right", "Left"))

# Summarize survey_vector
summary(survey_vector)

# Summarize survey_factor
summary(survey_factor)


# lab 4
#By default, the function factor() transforms a vector into an unordered factor. 
#To create an ordered factor, you have to add two additional arguments:
#ordered and levels.


#lab 5

# this is a vector 
# Definition of animal_vector and temperature_vector
animal_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High", "Low", "Medium")

# Convert animal_vector to a factor: animal_factor
animal_factor <- factor(animal_vector)

# Encode temperature_vector as a factor: temperature_factor
temperature_factor <- factor(temperature_vector,
                             ordered = TRUE,
                             levels = c("Low","Medium","High"))

# Print out animal_factor and temperature_factor
animal_factor
temperature_factor

# Definition of survey_vector and survey_factor
survey_vector <- c("R", "L", "L", "R", "R")
survey_factor <- factor(survey_vector, levels = c("R", "L"), labels = c("Right", "Left"))

# First element from survey_factor: right
right <- survey_factor[1]

# Second element from survey_factor: left
left <- survey_factor[2]

# Right 'greater than' left?
right > left

# Create speed_vector
speed_vector <- c("OK","Slow","Slow","OK","Fast")


#Lab 6
# Create speed_vector
speed_vector <- c("OK", "Slow", "Slow", "OK", "Fast")

# Convert speed_vector to ordered speed_factor
speed_factor <- factor(speed_vector,ordered = TRUE, levels = c("Slow","OK","Fast"))

# Print speed_factor
speed_factor

# Summarize speed_factor
summary(speed_factor)



#lab 7
# Definition of speed_vector and speed_factor
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
speed_factor <- factor(speed_vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))

# Compare DA2 with DA5: compare_them
compare_them <-    speed_factor[2] > speed_factor[5]

# Print compare_them: Is DA2 faster than DA5?
compare_them



x <- matrix(1:4, nrow = 2, byrow = TRUE, 
            dimnames = list(c("P", "Q"), c("A", "B")))

colSums(x)


x <- list(2:3, 1, 4:6, 7)
x[c(TRUE, TRUE, FALSE)]


x <- list(2:3, 1, 4:6, 7)
x[c(FALSE, TRUE)]
x[c(FALSE, TRUE, TRUE)]


store <- list(Product = c("A", "B"), Cost = c(15, 20))
store[["Cost"]]


z <- cbind(c(2, 4, 8), c(4, 8, 4))
z + 1


x <- c(1L, 0L, 5L)
y <- c("Apples", "Oranges", FALSE)
c(is.integer(x), is.character(y)) 


x <- 1.5
y <- c(3, 1, NA, 2)
x > y
x < y
x == y


df <- data.frame(x = c(8, 3, 7), y = c(TRUE, FALSE, FALSE))
names(df) <- c("Aug","Oct")
df



df <- data.frame(
  x = c(4, 14, 2, 1, 8, 9, 5, 15), 
  y = c("K", "F", "E", "M", "L", "Y", "O", "Q")
)
df


x <- c("0.5", "1.0", "1.5", "2")
length(x)



x <- c(4, 8, 2)
y <- c(2, NA, 4)
x / y


x <- c(4, 8, 2)
y <- c(2, NA, 4)
x * y


x <- matrix(10:18, nrow = 3, ncol = 3, byrow = FALSE)
dimnames(x) <- list(c("A", "B", "C"), paste0("W", 1:3))
matrix[x, 1:2]




x <- -20L
y <- matrix(1:6, nrow = 2, ncol = 3)
c(class(x), class(y))

x <- list(a = 1:5, b = c("Apples", "Oranges"))
y <- "What\"s my class?"
c(class(x), class(y))



x <- "R is awesome"
y <- "What\"s my class?"
c(class(x), class(y))


x <- list(p = c(5, 10, 15), q = c(20, 25, 30), r = c(35, 40, 45))
x[[]][]



df <- data.frame(
  x = c(1.5, -2, 3.5), 
  y = c("Sun", "Mon", "Tue"), 
  z = c(2, 1, 3)
)

df[order(df$y, decreasing = TRUE), ]

new_list <- list(x1 = c("Q", "R"), x2 = list(y = 7:8, z = c("A", "B")))
new_list$[c(7:8)


df <- data.frame(X = c(6, 12, 18), Y = c(24, 30, 36))



iris_small <- data.frame(
  species = c("virginica", "virginica", "setosa", "versicolor"), 
  sepal_length = c(6.4, 6.1, 4.8, 6.3), 
  petal_length = c(5.3, 4.9, 1.9, 4.4)
)
iris_small$petal_length



y <- matrix(LETTERS[1:9], nrow = 3, ncol = 3, byrow = FALSE)
y[-1, c(TRUE, FALSE)]

