# Assuming your dataset is stored in a data frame named 'df'
df <- data.frame(
  id = c(1, 2, 3, 4, 5, 6, 7),
  weight = c(20, 27, 24, 22, 23, 25, 28),
  bp = c(140, 130, 120, 134, 100, 116, 143),
  locality = c("urban", "rural", "urban", "urban", "rural", "rural", "urban"),
  smoking = c("no", "yes", "no", "yes", "yes", "no", "yes"),
  tumour = c("small", "small", "large", "small", "large", "small", "large")
)

# Display the created dataframe
print(df)


# Assuming your dataframe is named 'df'
plot(df$weight, df$bp, main = "Weight vs Blood Pressure", xlab = "Weight", ylab = "Blood Pressure", pch = 16, col = "blue")


# creating stacked chart between smoking and tumour.
table_data <- table(df$smoking, df$tumour)
barplot(table_data, main = "Smoking vs Tumour", xlab = "Smoking", ylab = "Count", col = c("lightblue", "pink"), legend = rownames(table_data))
