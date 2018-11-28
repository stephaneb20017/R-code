# Star Wars box office in millions (!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
#subset matrix
m <-  matrix(sample(1:15, 12), nrow = 3)
m
m[1:3]
m[3,2]
m[3,] #subset by row
m[,3] #subset by col
m[4]
m[9]
m[2, c(2,3)]
m[c(1,2),c(2,3)]


#subset mutiple element in submatrix


#subset by name


rownames(m) <- c("r1","r2","r3")
colnames(m) <- c("a","b","c","d")
m[2,3]
m["r2","c"]
#combination of both

m[2,"c"]


m[c(FALSE,FALSE,TRUE),
  c(FALSE,FALSE,TRUE,TRUE)]

m[c(FALSE,FALSE,TRUE),]


help(package="tseries")

#exo
star_wars_matrix[c("A New Hope", "The Empire Strikes Back"),1]
star_wars_matrix[2:3,]
star_wars_matrix[c("The Empire Strikes Back"),2]

