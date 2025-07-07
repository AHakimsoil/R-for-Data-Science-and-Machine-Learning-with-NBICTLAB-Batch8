#Loading the dataset
myData = ToothGrowth
myData

#Converting the variable dose from numeric to factor variable
#myData$dose=as.factor(myData$dose)
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

#Basic box plot

ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot()

#changing the display item in box plot
ggplot(myData, aes(x=dose,y=len))+
  geom_boxplot(outlier.color = "red", outlier.shape = 8, outlier.size = 4)+
  scale_x_discrete(limits=c("2"))


#changing box plot line colors by groups
ggplot(myData, aes(x=dose,y=len, color= dose))+
  geom_boxplot()

#Changing the order of items in the legend

ggplot(myData, aes(x=dose,y=len, color= dose))+
  geom_boxplot()+
  scale_x_discrete(limit= c("2", "0.5", "1"))

#Box plot with multiple groups
ggplot(myData, aes(x=dose,y=len, fill=supp))+
  geom_boxplot()

#Changing the box position
ggplot(myData, aes(x=dose,y=len, fill=supp))+
  geom_boxplot(position= position_dodge(1))



