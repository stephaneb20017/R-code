cities <- c("New York","Paris","London","Tokyo",
            "Rio de Janero","Cape Town")

sapply(cities,nchar)
vapply(cities,nchar,numeric(1))