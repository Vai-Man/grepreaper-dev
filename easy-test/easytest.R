library(ggplot2)
library(data.table)

data(diamonds)

mr <- grep("VS", diamonds$clarity) #matching rows

count <- length(mr)

print(count)