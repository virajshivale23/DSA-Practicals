
#Q1 Draw a histogram of Age (Titanic dataset).
hist(titanic_data$age,
     main = "Age OF TITANIC",
     xlab = "Age",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")

#Q2 Create a bar chart of Pclass vs. count of passengers.
pclass_count <- table(titanic_data$pclass)

# Bar chart
barplot(pclass_count,
        main = "Number of Passengers by Pclass",
        xlab = "Passenger Class",
        ylab = "Count",
        col = "orange",
        border = "black")

#Q3 Boxplot of LungCap by Gender
boxplot(lung$LungCap ~ lung$Gender,
        main = "Lung Capacity by Gender",
        xlab = "Gender",
        ylab = "Lung Capacity (cc)",
        col = c("pink", "lightblue"))

#Q5 Pie chart of Survivors vs Non-Survivors (Titanic)

survived_count <- table(titanic_data$survived)

pie(survived_count,
    labels = c("Non-Survivor", "Survivor"),
    main = "Proportion of Survivors vs Non-Survivors",
    col = c("red", "green"))

