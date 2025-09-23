

#Q1 create variable to store the data 
my_name <- "Viraj Shivale"
my_age <- 20
is_student <- TRUE

#Q2 Create vector containing number form 1 to 10 
numbers <- 1:10
print(numbers)

#Q3 Create a sequence from 5 to 50 with a step size of 5.
sequence <- seq(5, 50, by = 5)
print(sequence)

# Q4 Store the names of 5 fruits in a character vector and display the second and fourth fruit.

fruits <- c("Apple", "Banana", "Cherry", "Date", "Elderberry")
print(fruits[c(2, 4)])

#Q5 Create a numeric vector of 10 random numbers between 1 and 100

# Set seed for reproducibility (optional)
set.seed(123)

# Generate 10 random numbers between 1 and 100
random_numbers <- sample(1:100, 10)
print(random_numbers)

# Maximum value
max_value <- max(random_numbers)
print(paste("Maximum:", max_value))

# Minimum value
min_value <- min(random_numbers)
print(paste("Minimum:", min_value))

# Mean
mean_value <- mean(random_numbers)
print(paste("Mean:", mean_value))

# 6. Create a data frame with Name, Age, Marks (5 records)

students_df <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "Diana", "Ethan"),
  Age = c(20, 22, 21, 23, 19),
  Marks = c(85, 92, 78, 90, 88)
)
print(students_df)

# Q7 Sort the data frame by Marks in descending order

# Sort data frame by Marks in descending order
sorted_df <- students_df[order(-students_df$Marks), ]
print(sorted_df)



