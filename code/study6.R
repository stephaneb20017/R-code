animals <- c("cat","moose","impala","ant","kiwi")
grepl(pattern = "a", x = animals)
grepl(pattern = "a^", x = animals)
grepl(pattern = "a$", x = animals)

grep(pattern = "a", x = animals)


which(grepl(pattern = "a", x = animals))

sub(pattern = "a", replacement = "o", x = animals)
gsub(pattern = "a", replacement = "o", x = animals)
gsub(pattern = "a|i", replacement = "_", x = animals)