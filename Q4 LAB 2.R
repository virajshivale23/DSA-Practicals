
#Q1 Identify columns with missing values in Titanic dataset
colSums(is.na(titanic_data))

#Q2 Replace missing Age values with median Age
median_age <- median(titanic_data$age, na.rm = TRUE)
titanic_data$age[is.na(titanic_data$age)] <- median_age
print(titanic_data)


#Q3 Drop rows where Embarked is missing
titanic_data <- titanic_data[!is.na(titanic_data$embarked), ]
print(titanic_data)



#Q4 Lung Capacity dataset – Fill missing LungCap with mean
sum(is.na(lung$LungCap))
mean_lungcap <- mean(lung$LungCap, na.rm = TRUE)
lung$LungCap[is.na(lung$LungCap)] <- mean_lungcap
print(titanic_data)
