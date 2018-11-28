oil_price <- list(2.37,2.49,2.18,2.22,2.47,2.32)
triple <- function(x) {
  3 * x
}
result <- lapply(oil_price,triple)
str(result)