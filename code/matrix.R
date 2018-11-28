matrix(1:6, nrow =2)
matrix(1:6 , ncol = 3)
matrix(1:6, nrow = 2, byrow = TRUE)

#get the following error if the nth elements do match
#the matrice
matrix(1:3, nrow = 2, ncol = 3)
matrix(1:4, nrow = 2, ncol = 3, byrow = 3) #error
matrix(1:6, nrow = 2, ncol = 3, byrow = 3)


#to paste vector together to create a matrice
#rbind , cbind

cbind(1:3, 1:3)
rbind(1:3, 1:3)
# add a new row to an existant matrix
m <- matrix(1:6, byrow = TRUE, nrow = 2)
m 
m2 <- rbind(m,7:9) #very importand to extend a matrix by row!!!!
rbind(m2,10:12)


#naming a matrix colnames rownames
rownames(m) <- c("row1","row2")
m
colnames(m) <- c("col1","col2","col3")
m
#on-liner to name matrix dimnames()

m <- matrix(1:6, byrow = TRUE, nrow = 2,
            dimnames = list(c("row1","row2"),
                            c("col1","col2","col3")))
m

#coercion
#numerical was coerced to end up with characters

num <- matrix(1:8, ncol = 2)
num

char <- matrix(LETTERS[1:6], nrow = 4,ncol = 3)
char

cbind(num,char) 

##############################################################
#matrix lab 1# Star Wars box office in millions (!)
box <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)

# Create star_wars_matrix
star_wars_matrix  <- matrix(c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8),
                            nrow = 3,
                            byrow =TRUE
)

star_wars_matrix


new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create star_wars_matrix
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
star_wars_matrix


# Star Wars box office in millions (!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)

# Name the columns and rows of star_wars_matrix
rownames(star_wars_matrix) <- new_hope
rownames(star_wars_matrix) <- empire_strikes
rownames(star_wars_matrix) <- return_jedi


star_wars_matrix
colnames(star_wars_matrix)  <- c("US","non-US")

star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)


# Name the columns and rows of star_wars_matrix
col_names_vector <-  c("US","non-US")
row_names_vector <- c("A New Hope",
                      "The Empire Strikes Back",
                      "Return of the Jedi")

rownames(star_wars_matrix) <- row_names_vector
colnames(star_wars_matrix) <- col_names_vector