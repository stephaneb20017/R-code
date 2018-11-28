cities <- c("New York","Paris","London","Tokyo","Rio de Janeiro","Cape Town")

#num_chars <- c()
#for (i in 1:length(cities)) {
 # num_chars[i] <- nchar(cities[i])
#}

num_chars
lapply(cities,nchar)
list(lapply(cities,nchar))
