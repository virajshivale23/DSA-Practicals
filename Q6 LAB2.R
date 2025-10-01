
#Q1 A Create a boxplot of Fare and visually identify potential outliers.

boxplot(titanic_data$fare,
        main = "Boxplot of Fare (Titanic)",
        ylab = "Fare",
        col = "lightblue",
        border = "black")


#Q1 BOXPLOT OF AGE BY SURVIVED
boxplot(age ~ survived, data = titanic_data,
        main = "Age by Survived Status",
        xlab = "Survived",
        ylab = "Age",
        col = c("red", "green"))

#Q1 C - Which group (Survived/Not Survived) has more spread in ages?
tapply(titanic_data$age, titanic_data$survived, IQR)
  