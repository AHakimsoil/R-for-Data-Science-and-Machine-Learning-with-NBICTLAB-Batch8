#importing the dataset
dataset= read.csv("data.csv")

#importing the library
install.packages("ggplot2")
library(ggplot2)

#Creating the basic histogram
ggplot(dataset,aes(x=weight))+
  geom_histogram(color="white")

#Changing histogram plot colors by groups
ggplot(dataset,aes(x=weight, fill=sex))+
geom_histogram(color = "white", alpha=0.5, position ="identity")



