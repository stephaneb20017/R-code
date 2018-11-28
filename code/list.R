#list in List
similar_song <- list(title = "R on your time?",
                     duration = 230)

song <- list(title = "Rsome times",
                    duration = 190, track = 5,
                    similar = similar_song)
             
str(song)


#subset list
#
#that corresponds to the title information. This is a very important detail when trying
#to subset lists. If you use single brackets on lists, you subset the list, but also a
#list gets returned. If you want to select the actual title from `song`, so the character
#string Rsome times, you'll need double square brackets instead of single ones:
#That looks more like it! The difference between single brackets and double brackets is not
#big on your keyboard, but it sure is important from an R perspective. Just remember this:
#subsetting lists using single brackets results in lists, while you can only access a single
#element using double brackets. This difference doesn't limit you from supercharging your


song[1]
song[[1]]

song[c(1,3)]
song[[c(1,3)]]
song[[1]][[3]]

song[c(4,1)]
song[[4]][[1]]

#by names
song[["duration"]]
#by logical
song[c(FALSE,TRUE,TRUE,FALSE)]
song[[c(FALSE,TRUE,TRUE,FALSE)]] #make no sense

#$ sign 
#Another way that is totally new here, is the use of the dollar sign to select an element
#from a list. It works just the same as the double brackets but only works on named lists.
song$duration

friends <- c("Kurt","Florence","Patti","Dave")
song$sent <- friends # same as 
song[["sent"]] <- friends

#It's even possible to add elements to embedded lists. To add a reason why you decided to
song$similar$reason <- "too long"
#how to remove ?
song$duration$reason  == "NA"
str(song) 


#wrapup
#[[ or [ ?
#[[ to select list element
#[ result in sublist
#[[ and $ to subset and extend lists

# Lab
# Numeric vector: 1 up to 10
my_vector <- 1:10 

# Numeric matrix: 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# Factor of sizes
my_factor <- factor(c("M","S","L","L","M"), ordered = TRUE, levels = c("S","M","L"))

# Construct my_list with these different elements
my_list <- list(my_vector, my_matrix, my_factor)
is.list(my_list)

# Construct my_list with these different elements
my_list <- list(my_vector, my_matrix, my_factor)
names(my_list) <- c("vec","mat","fac")

str(my_list)

# Construct my_super_list with the four data structures above
my_super_list <- list(my_vector, my_matrix, my_factor, my_list)


# Create actors and reviews
actors_vector <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
reviews_factor <- factor(c("Good", "OK", "Good", "Perfect", "Bad", "Perfect", "Good"), 
                         ordered = TRUE, levels = c("Bad", "OK", "Good", "Perfect"))

# Create shining_list
shining_list <- list(title = "The Shining",
                     actors = actors_vector,
                     reviews = reviews_factor)


# Create the list lst
lst <- list(top[5])

# Create the list skills
skills <- list(top, cont, prop, lst)
names(skills) <- c("topics","context","properties","list_info")

# Display the structure of skills
str(skills)

# Create the list lst
lst <- list(top[5], prop[,4])

# Create the list skills
skills <- list(top, cont, prop, lst)
names(skills) <- c("topics","context","properties","list_info")

# Display the structure of skills
str(skills)


key_skills <- list(skills$topics[2], skills$context[2], skills$list_info[[2]][4])

