
#Q1 A Compute Q1, Q3, and IQR For fare (Titanic dataset)

Q1_fare <- quantile(titanic_data$fare, 0.25, na.rm = TRUE)
Q3_fare <- quantile(titanic_data$fare, 0.75, na.rm = TRUE)
IQR_fare <- Q3_fare - Q1_fare

#Q1 B Define lower and upper bounds
lower_fare <- Q1_fare - 1.5 * IQR_fare
upper_fare <- Q3_fare + 1.5 * IQR_fare

# Q1 C Count passengers outside the bounds
fare_outliers <- titanic_data$fare[titanic_data$fare < lower_fare | titanic_data$fare > upper_fare]
length(fare_outliers)

cat("Fare Outliers Count:", length(fare_outliers), "\n")
cat("Lower Bound:", lower_fare, " Upper Bound:", upper_fare, "\n")
cat("Fare Outliers:\n")
print(fare_outliers)


#Q2        
# Compute Q1, Q3, and IQR for Age
Q1_age <- quantile(titanic_data$age, 0.25, na.rm = TRUE)
Q3_age <- quantile(titanic_data$age, 0.75, na.rm = TRUE)
IQR_age <- Q3_age - Q1_age

# Define lower and upper bounds
lower_age <- Q1_age - 1.5 * IQR_age
upper_age <- Q3_age + 1.5 * IQR_age

# Detect outliers
age_outliers <- titanic_data$age[titanic_data$age < lower_age | titanic_data$age > upper_age]
cat("\nAge Outliers Count:", length(age_outliers), "\n")
cat("Lower Bound:", lower_age, " Upper Bound:", upper_age, "\n")
cat("Age Outliers:\n")
print(age_outliers)

# Replace outliers with nearest boundary (capping)
titanic_data$age[titanic_data$age < lower_age] <- lower_age
titanic_data$age[titanic_data$age > upper_age] <- upper_age

# Display first few rows after capping
cat("\nFirst few rows of Titanic Age after capping:\n")
print(head(titanic_data[, c("age")]))


      
      