#Q1 If statement to check if a number is positive or negative
number <- -5

if (number > 0) {
  print("Positive")
} else if (number < 0) {
  print("Negative")
} else {
  print("Zero")
}

#Q2 If-else statement to check if a number is even or odd
num <- 7

if (num %% 2 == 0) {
  print("Even")
} else {
  print("Odd")
}

#Q3 Program to check if a given year is a leap year
year <- 2024

if ((year %% 400 == 0) || (year %% 4 == 0 && year %% 100 != 0)) {
  print(paste(year, "is a leap year"))
} else {
  print(paste(year, "is not a leap year"))
}

#Q4 Take numeric input for marks and print Pass/Fail
marks <- 45

if (marks >= 40) {
  print("Pass")
} else {
  print("Fail")
}
#Q5 Nested if-else to assign grades
marks <- 82

if (marks >= 90) {
  grade <- "A"
} else if (marks >= 75 && marks <= 89) {
  grade <- "B"
} else if (marks >= 60 && marks <= 74) {
  grade <- "C"
} else {
  grade <- "Fail"
}

print(paste("Grade:", grade))




