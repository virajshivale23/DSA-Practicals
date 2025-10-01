
#Q1 Import the airquality dataset and check its structure using str().
data(airquality)
str(airquality)

#Q2 Find the number of missing values in airquality.
sum(is.na(airquality))

#Q3 Use summary() on the mtcars dataset and interpret the output.
summary(mtcars)

#Q4 Find the mean horsepower (hp) in mtcars.
mean(mtcars$hp)

#Q5 Group the iris dataset by species and calculate the average Sepal.Width.
aggregate(Sepal.Width ~ Species, data = iris, FUN = mean)
