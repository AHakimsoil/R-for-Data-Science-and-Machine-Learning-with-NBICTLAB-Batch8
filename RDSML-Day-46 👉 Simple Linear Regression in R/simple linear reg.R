#simple linear Regression
# Importing the dataset
dataset =read.csv("Salary_Data.csv")
View(dataset)
#splitting the data set into traing and test set
install.packages("caTools")
library(caTools)
set.seed(123)
split=sample.split(dataset$Salary, SplitRatio = 2/3)
split
training_set = subset(dataset, split==TRUE)
training_set
View(training_set)
test_set=subset(dataset, split==FALSE)
View(test_set)

#Fitting the simple linear regression model to the training set
regressor=lm(formula = Salary~YearsExperience, 
             data= training_set)



