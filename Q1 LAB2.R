
#Q1 
#LOAD CSV FILE
facebook_data <- read.csv("dataset_Facebook.csv", header = TRUE)

#load excel file
install.packages("readxl")   # install once
library(readxl)              # load it every time
getwd()
lungcap_data <- read_excel("C:/Users/DELL/Downloads/LungCap_Dataset.xls")

#load txt file
getwd()
data <- read.csv("viraj.txt", header = TRUE, stringsAsFactors = FALSE)

# Q2 DISPLAY FIRST 10 ROWS
head(facebook_data, 10)
head(lungcap_data, 10)
head(data, 10)

#Q3 Check data type of each column in Titanic dataset
titanic_data <- read.csv("titanic_data.csv", header = TRUE)
str(titanic_data)

#Q4 Save Titanic survivors into a new CSV
survivors <- subset(titanic_data, Survived == 1)
write.csv(survivors, "titanic_survivors.csv", row.names = FALSE)




