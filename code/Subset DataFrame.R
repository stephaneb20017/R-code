#subset data frame
#create the vector first
name <- c("Anne","Pete","Franck","Julia","Catch")
age <-  c(28,30,21,39,35)
child <-  c(FALSE,TRUE,TRUE,FALSE,TRUE)

people <- data.frame(name, age, child, stringsAsFactors = FALSE)



test <- people[3,2]
str(test)
people[3,"age"]
people[3,]

people[,"age"]

people[c(3,5),c("age","child")]

#In the data frame case, you simply end up with a new data frame, that only contains
#the column you specified. This command, for example, gives the age column as a data.frame.
#I repeat: a data.frame, not a vector!

people[2]

#Remember when I told that a data frame is actually a list containing all vectors of #the same length? 
#This means that you can also use the list syntax to select elements. Say,
people$age
people[["age"]]  #In all cases, the result is a vector.

#You can also use single brackets to subset lists, but this generates a new list, containing
#only the specified elements. Take this command for example

people["age"]

people[2]

#The result is still a data frame, which is a list, but this time containing only the
#"age" element. This explains why before, this command gave a data frame instead of vector.
#Again, using single brackets or double brackets to subset data structures can have serious
#consequences, so always think about what you're dealing with and how you should handle it.

################################################ IMPORTANT
#extend a data frame adding a column
height <- c(163,177,163,162,157)

#extend
people$height <- height
people[["height"]] <- height

people

#add column with cbind()
weight <- c(74,63,68,55,56)
cbind(people,weight)

people

#add a row with rbind()
#`rbind()` to add new rows to your observations. Suppose you want to add the information of
#another person, Tom, to the data frame. Simply creating a vector with the name, age, height
#etc, won't work, because a vector can't contain elements of different types. You'll have to

#create a new data frame containing only a single observation, and add that to the data
tom <- data.frame("Tom", 37, FALSE, 183)

rbind(people,tom)

#Wait, what? R throws an error. Names do not match previous names. This means that the
#names in `people` and `tom` do not match. We'll have to improve our definition of `tom`
#to make the merge successful:
#Now, `rbind()` will work as you'd want it to work.

tom <- data.frame(name = "Tom", age = 37,
                  child = FALSE, height = 183)

rbind(people, tom)


#filter your data frame lower/upper

#A first guess would be to use the `sort()` function, which sorts a vector into ascending
#or descending order. Let's experiment a bit with this, and sort the age column:
#What gets returned is an ordered version of the age column. Looks nice, but it's not really
#what we need. There's not a clear way in which we could use these values, to change the ordering
#of the rows in the data.frame. Instead of the sort() function, we'll need the `order()`
sort(people$age)

#let test the order() function

ranks <- order(people$age)
ranks

type(people$age)

a <- c(100, 9, 101)
order(a)






sort(people$age)

ranks <- order(people$age)
 people$age
 
 people[ranks,]
 
 people[order(people$age, decreasing = TRUE),]

 #-----------------------------------------------------
 
 #lab 6
 # planets_df is pre-loaded
 
 # The type of Mars: mars_type
 mars_type <- planets_df[4,2]
 
 # Entire rotation column: rotation
 rotation <- planets_df$rotation
 
 # First three planets: closest_planets_df
 closest_planets_df <- planets_df[1:3,1:5]
 
 
 # Last three planets: furthest_planets_df
 furthest_planets_df <- planets_df[6:8,1:5]
 
                                 
#lab 7
# planets_df is pre-loaded

 # Diameter and rotation for Earth: earth_data 
 earth_data <- planets_df[3,c("diameter","rotation")]
                          
                          
 # Diameter for the last six rows: furthest_planets_diameter
  furthest_planets_diameter <- planets_df[3:8,"diameter"]
                          
# Print furthest_planets_diameter
 furthest_planets_diameter 
 
 
 # planets_df is pre-loaded in your workspace
 
 # Create rings_vector
 rings_vector <- planets_df$has_rings
 
 # Print rings_vector
 rings_vector
 
 
 
 # planets_df pre-loaded in your workspace
 
 # Create rings_vector
 rings_vector <- planets_df$has_rings
 
 # or without vector
 planets_df[planets_df$has_rings == TRUE, ]
 # and same
 subset(planets_df, subset = has_rings == TRUE)
 
 
 # Select the information on planets with rings: planets_with_rings_df
 planets_with_rings_df <- planets_df[rings_vector,]
 
 planets_with_rings_df
 

 # planets_df is pre-loaded in your workspace
 
 # Planets that are smaller than planet Earth: small_planets_df
 small_planets_df <- planets_df[planets_df$diameter < 1, ]        # option 1
 small_planets_df  <- subset(planets_df, subset = diameter < 1)   # option 2
 
 # Planets that rotate faster than planet Earth: fast_planets_df
 slow_planets_df <- planets_df[abs(planets_df$rotation) > 1, ]      # option 1
 slow_planets_df <- subset(planets_df, subset = abs(rotation) > 1)  # option 2
 
 
 
 # planets_df is already pre-loaded in your workspace
 
 # Definition of moons and masses
 moons <- c(0, 0, 1, 2, 67, 62, 27, 14)
 masses <- c(0.06, 0.82, 1.00, 0.11, 317.8, 95.2, 14.6, 17.2)
 
 # Add moons to planets_df under the name "moon"
 planets_df$moon <- moons
 
 # Add masses to planets_df under the name "mass"
 planets_df$mass <- masses
 
 
 
 # planets_df is pre-loaded (without the columns moon and mass)
 
 # Name pluto correctly
 #pluto <- data.frame("Pluto", "Terrestrial planet", 0.18, -6.38, FALSE)
 pluto <- data.frame(name = "Pluto", type = "Terrestrial planet", diameter = 0.18, rotation = -6.38, has_rings = FALSE)
 
 # Bind planets_df and pluto together: planets_df_ext
 planets_df_ext <- rbind(planets_df, pluto)
 
 # Print out planets_df_ext
 planets_df_ext
 
 
 
 
 # planets_df is pre-loaded in your workspace
 
 # Create a desired ordering for planets_df: positions
 positions <- order(planets_df$diameter, decreasing = TRUE)
 
 # Create a new, ordered data frame: largest_first_df
 
 largest_first_df <- planets_df[positions, ]
 
 # Print largest_first_df
 largest_first_df
 
 #lab=========================================================================
 
 # Remove economic variables and add population.
 countries_df_dem <- countries_df[ , c(1, 2, 5)]
 countries_df_dem$population <- population
 
 # Add brazil
 names(brazil) <- c("name", "continent", "has_president", "population")
 countries_df2 <- rbind(countries_df_dem,brazil)
 
 # Sort by population
 countries_df2[order(countries_df2$population,decreasing=TRUE), ]

