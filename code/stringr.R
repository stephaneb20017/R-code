# Load the stringr package
library(stringr)

# Trim all leading and trailing whitespace
str_trim(c("   Filip ", "Nick  ", " Jonathan"))

# Pad these strings with leading zeros
str_pad(c("23485W", "8823453Q", "994Z"), width = 9, side = "left", pad = "0")

## stringr has been loaded for you

# Look at the head of students2
head(students2, n = 6)

# Detect all dates of birth (dob) in 1997
str_detect(students2$dob,"1997")

# In the sex column, replace "F" with "Female"...
students2$sex <- str_replace(students2$sex, "F","Female")

# ...And "M" with "Male"
students2$sex <- str_replace(students2$sex, "M", "Male")

# View the head of students2
head(students2)

## The stringr package is preloaded

# Replace all empty strings in status with NA
social_df$status[social_df$status == ""] <-NA

# Print social_df to the console
social_df

# Use complete.cases() to see which rows have no missing values
complete.cases(social_df)

# Use na.omit() to remove all rows with any missing values
na.omit(social_df)
