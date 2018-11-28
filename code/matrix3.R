new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

#not working
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
rownames(star_wars_matrix) <- c("US", "non-US")
colnames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")


#not working
col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
rbind(new_hope, empire_strikes, return_jedi, names = c(col, row))
#not working
col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), 
                           byrow = TRUE, nrow = 3, dimnames = list(col, row))


col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), 
                           byrow = TRUE, nrow = 3, dimnames = list(row, col))




star_wars_matrix

# Calculate the worldwide box office: worldwide_vector
worldwide_vector <- rowSums(star_wars_matrix)


# Bind the new variable worldwide_vector as a column to star_wars_matrix: star_wars_ext
star_wars_ext <- col(star_wars_matrix,worldwide_vector)
star_wars_ext

worldwide_vector

# Combine both Star Wars trilogies in one matrix: all_wars_matrix
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)


total_revenue_vector <- colSums(all_wars_matrix)


star_wars_matrix[1,1]

star_wars_matrix[,1]
star_wars_matrix[1,]
mean(star_wars_matrix[,2]) 

mean(star_wars_matrix[c(1,2),2])

star_wars_matrix[c(1,3),c(1,2)]  #or star_wars_matrix[c(1,3), ]




#Select the US revenues for "A New Hope" and "The Empire Strikes Back"
star_wars_matrix[c("A New Hope", "The Empire Strikes Back"),1]

# Select the last two rows and both columns
star_wars_matrix[2:3,]

# Select the non-US revenue for "The Empire Strikes Back"
star_wars_matrix[c("The Empire Strikes Back"),2]

#--------------------------------------------------------

# option A working
all_wars_matrix[seq(2, 6, by = 2), "total"]

# option B
all_wars_matrix[c(F,T,F,T,F,T), c(F,T)]

# option C
all_wars_matrix[c("The Empire Strikes Back", 4, 6), c(T,T,F)]

# option D workingtr
all_wars_matrix[c(F,T), "total"]


# Combine view_count_1 and view_count_2 in a new matrix: view_count_all
view_count_all <- cbind(view_count_1,view_count_2)

# Subset view counts for three loudest debaters: view_count_loud
view_count_loud <- view_count_all[,c("Rachel","Walter","Dave")]

# Use colSums() to calculate the number of views: total_views_loud
total_views_loud <- colSums(view_count_loud)
