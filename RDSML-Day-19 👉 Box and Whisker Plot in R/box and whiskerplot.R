#Loading the dataset
myData = ToothGrowth
myData

#Converting the variable dose from numeric to factor variable
myData$dose=as.factor(myData$dose)
install.packages("ggplot2")
library(ggplot2)

ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot()

#Rotating the box plot

ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot()+
  coord_flip()

#Notched box plot
ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot(notch=TRUE)

#Changing Outlier color, Shape and size

ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot(outlier.color = "red", outlier.shape = 8, outlier.size = 4)

