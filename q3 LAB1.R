# Q1 Write a for loop to print numbers from 1 to 10

for (i in 1:10) {
  print(i)
}

#Q2 Write a while loop to sum numbers from 1 to 100.
sum <- 0
i <- 1

while (i <= 100) {
  sum <- sum + i
  i <- i + 1
}

print(paste("Sum is:", sum))

# Q3 Loop to print only even numbers between 1 and 50
for (i in 1:50) {
  if (i %% 2 == 0) {
    print(i)
  }
}

#Q4 Loop to print the multiplication table of 7

for (i in 1:10) {
  result <- 7 * i
  print(paste("7 x", i, "=", result))
}

#Q5 Loop to calculate the factorial of a given number n
n <- 5
factorial <- 1

for (i in 1:n) {
  factorial <- factorial * i
}

print(paste("Factorial of", n, "is", factorial))

#Q6 Nested loop to print a star pattern

rows <- 5

for (i in 1:rows) {
  line <- ""
  for (j in 1:i) {
    line <- paste0(line, "*")
  }
  print(line)
}



