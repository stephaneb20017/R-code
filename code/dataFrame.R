
#So, for the practical part now: creating a data.frame. In most cases, you don't create
#a data frame yourself. Instead, you typically import data from another source. This could
#be a csv file, a relational database, but also come from other software packages like

data.frame()


#create the vector first
name <- c("Anne","Pete","Franck","Julia","Catch")
age <-  c(28,30,21,39,35)
child <-  c(FALSE,TRUE,TRUE,FALSE,TRUE)

df <-  data.frame(name,age, child)
#as for vector and list, you can use the names functions, or use equal signs

names(df) <-  c("Name","Age","Child")
df


df <-  data.frame(Name = name, Age = age, Child = child)
str(df)
#actually the structure of a Data frame is a list

data.frame(name[-1], age, child)

#Second, the name column, which you expect to be a character vector, 
#is actually a factor.
#That's because R by default stores the strings as factors. To suppress this behaviour, you
#can set the stringsAsFactors argument of the data.frame function to FALSE



# Definition of vectors
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Encode type as a factor: type_factor
type_factor <- factor(type)

# Construct planets_df: strings are not converted to factors!
planets_df <- data.frame(planets,type_factor,diameter,rotation,rings, stringsAsFactors = FALSE)

# Display the structure of planets_df
str(planets_df)




# Construct improved planets_df
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
type_factor <- factor(type)
planets_df <- data.frame(planets, type_factor, diameter, rotation, rings, stringsAsFactors = FALSE)

# Improve the names of planets_df
names(planets_df) <- c("name","type","diameter","rotation","has_rings")
planets_df



# Convert continents to factor: continents_factor
continents_factor <- factor(continents)

# Create countries_df with the appropriate column names
countries_df <- data.frame(countries, continents_factor,gdp,hdi,president, stringsAsFactors = FALSE)

# Display the structure of countries_df
str(countries_df)


