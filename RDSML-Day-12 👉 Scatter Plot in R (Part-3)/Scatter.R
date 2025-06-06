library("ggplot2")
library(ggplot2)
dataset = mtcars
#converting cyl colum from a numeric to a factor variable
dataset$cyl =as.factor(dataset$cyl)
#adding regression line based on multiple groups
ggplot(dataset, aes(x=wt, y=mpg, color=cyl))+
  geom_point()+
  geom_smooth(method = lm)

