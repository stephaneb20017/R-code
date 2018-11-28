today <- Sys.Date()
today

class(today)

now <- Sys.time()
now
class(now)

my_time <- as.POSIXct("1971-05-14 11:25:15")
my_time +1 

as.Date("1982-01-13")
as.Date("Jan-13-82", format = "%b-%d-%y")
as.Date("13 January, 1982", format = "%d %B, %Y")