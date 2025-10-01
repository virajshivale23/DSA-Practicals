

# Q1 Rename  column name to lowercase
colnames(titanic_data) <- tolower(colnames(titanic_data))
colnames(titanic_data)

#Q2 Sort Titanic dataset by Age descending
titanic_sorted <- titanic_data[order(-titanic_data$age), ]
head(titanic_sorted)

#Q3 Create AgeGroup column
titanic_data$agegroup <- cut(
  titanic_data$age,
  breaks = c(-Inf, 11, 18, 59, Inf),
  labels = c("Child", "Teen", "Adult", "Senior")
)

head(titanic_data[, c("age", "agegroup")])

#Q4 Calculate mean Fare by Pclass and Survived
mean_fare <- aggregate(fare ~ pclass + survived, data = titanic_data, FUN = mean, na.rm = TRUE)
mean_fare



