# logs is available in your workspace

# Initialize the iterator i to be 1
i <- 1

# Code the while loop
while (logs[[i]]$success == TRUE) {
  print(i)
  i <- i+1
  
}



# Adapt the while loop
i <- 1
while (logs[[i]]$success) {
  print(logs[[i]]$details$message)
  i <- i + 1
}



# initialize i and found
i <- 1
found <- FALSE

# code the wile loop




# logs is available in your workspace

# Initialize i and found
i <- 1
found <- FALSE

# Code the while loop
while (found == FALSE) {
  if (logs[[i]]$success == FALSE && logs[[i]]$details$location == "waste") {
    print("found") 
    found <- TRUE
  } else {
    print("still looking")
    i <- i+1
  }
}


# logs is available in your workspace

# Make the printout conditional: only if success
for (log in logs) { 
  if (log$success == TRUE)
    print(log$timestamp)  
}



# logs is available in your workspace

# Finish the for loop: add date element for each entry
for (i in 1:length(logs)) {
  logs[[i]]$date <- as.Date(logs[[i]]$timestamp)
}

# Print first 6 elements in logs
head(logs)