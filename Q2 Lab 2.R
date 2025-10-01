install.packages("dplyr")
library(dplyr)

# Q1 a) Select only Name, Sex, Age, Survived
titanic_selected <- titanic_data %>%
  select(Name, Sex, Age, Survived)
head(titanic_selected)

# Q1 b) Show passengers older than 50
titanic_over50 <- titanic_selected %>%
  filter(Age > 50)
titanic_over50

# Q1 c) Count the number of survivors in each Pclass
survivors_by_class <- titanic_data %>%
  filter(Survived == 1) %>%
  group_by(Pclass) %>%
  summarise(Count = n())
survivors_by_class


#Lung Capacity 
library(readxl)
lung <- read_excel("LungCap_Dataset.xls")
colnames(lung) <- c("LungCap", "Age", "Height", "Smoke", "Gender", "Caesarean")
head(lung)

# a) Select children below age 12
children <- lung[lung$Age < 12, ]
head(children)


# b) Group by Gender and calculate average Lung Capacity
avg_lung_by_gender <- aggregate(LungCap ~ Gender, data = children, FUN = mean, na.rm = TRUE)
avg_lung_by_gender


# c) Find the child with maximum Lung Capacity
max_lung_child <- children[children$LungCap == max(children$LungCap, na.rm = TRUE), ]
max_lung_child
