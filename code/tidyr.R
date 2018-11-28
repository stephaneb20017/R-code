install.packages("tidyr")
library(tidyr)
library(dplyr)

## tidyr and dplyr are already loaded for you

# View the head of census
head(census)

# Gather the month columns
census2 <- gather(census, month, amount, -YEAR)

# Arrange rows by YEAR using dplyr's arrange
census2 <- arrange(census2, YEAR)

# View first 20 rows of census2
head(census2, n = 20)
#---------------------------------------------------------------
## tidyr is already loaded for you

# View the head of census_long3
head(census_long3)

# Separate the yr_month column into two
census_long4 <- separate(census_long3, col =yr_month , into = c("year", "month"), sep = "_")
#bmi_cc_clean <- separate(bmi_cc, col = Country_ISO, into = c("Country", "ISO"), sep = "/")

# View the first 6 rows of the result
head(census_long4, n = 6)

## mbta6 is pre-loaded

# View a summary of mbta6
summary(mbta6)

# Generate a histogram of Boat ridership
hist(mbta6$Boat)
#----------------------------------------------------------------
#create a small dataset to find missing values

x <- data.frame(a = c(2, 5 , NA, 8),
                b = c(NA, 34, 9, NA))

#return data frame of TRUEs and FALSEs
is.na(x)

sum(is.na(x))

#find indices of missing values in column b
which(is.na(x$b))

#identifying error
  #context matters!
  #plausible ranges
  #numeric variables in weather data
  #percentage 0-100
  #temperature (fahrenheit)
  # wind speeds (miles per hour)
  # pressure (inches of mercury)
  # distacnes (miles)
  # eighths ( of cloud cover)


#----

# Count missing values
sum(is.na(weather6))

# Find missing values
summary(weather6)

# Find indices of NAs in Max.Gust.SpeedMPH
ind <- which(is.na(weather6$Max.Gust.SpeedMPH))

# Look at the full rows for records missing Max.Gust.SpeedMPH
weather6[ind, ]


#-----
# Review distributions for all variables
summary(weather6)

# Find row with Max.Humidity of 1000
ind <- which(weather6$Max.Humidity == 1000)

# Look at the data for that day
weather6[ind, ]

# Change 1000 to 100
weather6$Max.Humidity[ind] <- 100


#---
# Look at summary of Mean.VisibilityMiles
summary(weather6$Mean.VisibilityMiles)

# Get index of row with -1 value
ind <- which(weather6$Mean.VisibilityMiles == "-1")

# Look at full row
weather6[ind,]

# Set Mean.VisibilityMiles to the appropriate value
weather6$Mean.VisibilityMiles[ind] <- 10


# Clean up column names
names(weather6) <- new_colnames

# Replace empty cells in events column
weather6$events[weather6$events == ""] <- "None"

# Print the first 6 rows of weather6
head(weather6)