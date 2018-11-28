nyc <- list(pop =8405837,
            borougths = c("Manhattan","Bronx","Brooklyn","Queens","Staten Island"),
            capital = FALSE)

#for (info in nyc) {
 # print(class(info))
#}

lapply(nyc,class)