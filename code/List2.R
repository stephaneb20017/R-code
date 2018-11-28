# shining_list is already defined in the workspace

# Actors from shining_list: act
act <- shining_list[["actors"]]

# List containing title and reviews from shining_list: sublist
sublist <- shining_list[c("title","reviews")]

# Display structure of sublist
str(sublist)


# shining_list is already defined in the workspace

# Select the last actor: last_actor
last_actor <- shining_list[[2]][[5]]

# Select the second review: second_review
second_review <- shining_list[[3]][[2]]

#extending a list
shining_list$my_opinion <- "Love it!"
shining_list[["my_opinion"]] <- "Love it!"

# shining_list is already defined in the workspace

# Add the release year to shining_list
shining_list$year <- 1980

# Add the director to shining_list
shining_list$director  <- "Stanley Kubrick"

# Inspect the structure of shining_list
str(shining_list)



# shining_list is already defined in the workspace

# Add both the year and director to shining_list: shining_list_ext
shining_list_ext <- c(shining_list,year = 1980 , director = "Stanley Kubrick")

# Have a look at the structure of shining_list_ext
str(shining_list_ext)