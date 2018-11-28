vec <- c(2, 3, 5, 7, 11, 13)

# Option 1
for (el in vec) {
  print(el)
}


vec <- c(2, 3, 5, 7, 11, 13)
# Option 2
for (i in 1:length(vec)) {
  print(vec[i])
}