# Load necessary libraries
library(ggplot2)

# Using built-in dataset 'mtcars'
data("mtcars")

# Extract a series - let's use 'mpg' (Miles/(US) gallon)
mpg_data <- mtcars$mpg

# Transform data - here we'll just sort it for simplicity
sorted_mpg <- sort(mpg_data)

# Basic Histogram
ggplot(mtcars, aes(x=mpg)) +
  geom_histogram(binwidth=1, fill="blue", color="black") +
  theme_minimal() +
  ggtitle("Histogram of MPG")

# Boxplot
ggplot(mtcars, aes(y=mpg)) +
  geom_boxplot(fill="orange", color="black") +
  theme_minimal() +
  ggtitle("Boxplot of MPG")

# Scatter plot with another variable, for example 'wt' (weight)
ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(color="red") +
  theme_minimal() +
  ggtitle("Scatter Plot of MPG vs. Weight")
