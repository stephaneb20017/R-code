#simulate some data
set.seed(10)
x <- c(rnorm(30, mean = 15, sd = 5), -5, 28, 35)

#view a boxplot
boxplot(x, horizontal = TRUE)
boxplot(x, vertical = TRUE)


#create another small database
df2 <- data.frame(A = rnorm(100,50, 10),
                  B = c(rnorm(99,50,10), 500),
                  c = c(rnorm(99,50,10), -1))
#view a summary
summary(df2)
#not really easy to  see the outlier
boxplot(df2, horizontal  = TRUE)

#better with histogram to see outlier
hist(df2$B, breaks = 20)

#Which two of the following are most useful for identifying outliers?
#summary() and hist()
# Look at a summary() of students3
summary(students3)

# View a histogram of the age variable
hist(students3$age)

# View a histogram of the absences variable
hist(students3$absences, breaks = 10)

# View a histogram of absences, but force zeros to be bucketed to the right of zero
hist(students3$absences, right = FALSE)



