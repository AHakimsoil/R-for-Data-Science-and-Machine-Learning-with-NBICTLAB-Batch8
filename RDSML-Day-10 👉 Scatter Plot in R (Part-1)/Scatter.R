
#install.packages("ggplot2")
library(ggplot2)
dataset = mtcars
view(dataset)
dataset
dataset
dataset
view(dataset)

#Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point()
data(mtcars)
#changing the point size and shape
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point(size = 3, shape= 1)

# adding the regression line
ggplot(dataset, aes(x = wt, y=mpg)) +
  geom_point(size = 3, shape= 1)+
  geom_smooth(method ="lm" )+
  labs(title = "Scatterplot of a car wt vs car mpg", 
       x = "Wt of Cars (pound)",
       y = "Miles per Gallon (Gallon)")

  




