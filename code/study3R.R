cities <- c("New York","Paris","London","Tokyo",
            "Rio de Janero","Cape Town")

first_and_last <- function(name) {
  name <- gsub(" ","", name)
  letters <- strsplit(name, split = "")[[1]]
  return(c(first = min(letters, last = max(letters))))
}

sapply(cities, first_and_last, character(2))

