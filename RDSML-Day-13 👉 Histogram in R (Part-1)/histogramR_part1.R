#importing the data set
dataset= read.csv("data.csv")

#importing the library
library(ggplot2)

#Basic histogram using ggplot2
ggplot(dataset, aes(x=weight))+
  geom_histogram()

#Changing the width of bins
ggplot(dataset, aes(x=weight))+
  geom_histogram(binwidth = 1.25, color="black")

#Changing colors
ggplot(dataset, aes(x=weight))+
  geom_histogram(binwidth = 1.25, color="black", fill="white")

#Adding the mean line
histoplot= ggplot(dataset, aes(x=weight))+
  geom_histogram(color="black", fill="white")

histoplot

histoplot+geom_vline(aes(xintercept=mean(weight)),
                     color="red", linetype="dashed", size=1)

#Histogram with density plot




