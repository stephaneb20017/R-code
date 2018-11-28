the_fellowship <- c(316,556)
two_towers <- c(343,584)
return_king <- c(378,742)

lotr_matrix <- rbind(the_fellowship,two_towers,return_king)
colnames(lotr_matrix) <- c("US","non-US")
rownames(lotr_matrix) <- c("Fellowship","Two_Towers","Return King")

#matrix scalar

lotr_matrix  / 1.12
lotr_matrix  * 2

lotr_matrix - 50

#matrix matrix

theater_cut[,1] [,2] 

lotr_matrix - theater_cut


new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
colnames(star_wars_matrix) <- c("US", "non-US")
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

star_wars_matrix /5

#---------------------------------------------------------------------------

# Star Wars box office in millions (!)
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Definition of ticket_prices_matrix
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 

# Estimated number of visitors
visitors <- star_wars_matrix / ticket_prices_matrix

# Average number of US visitors
average_us_visitors <- mean(visitors[,1])

# Average number of non-US visitors
average_non_us_visitors <- mean(visitors[,2])