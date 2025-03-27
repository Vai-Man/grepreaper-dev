library(data.table)

fwrite(diamonds, "diamonds.csv")

filtered_data <- fread(cmd = "grep 'VS' diamonds.csv")

count <- nrow(filtered_data)

print(count)
