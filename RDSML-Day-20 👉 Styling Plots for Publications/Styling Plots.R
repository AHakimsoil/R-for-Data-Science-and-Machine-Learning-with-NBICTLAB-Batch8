
#Styling plot for publication
library(ggplot2)
#install.packages("ggthemes")
library(ggthemes)
#install.packages("viridis")
library(viridis)

#Sample data load
df= mtcars
df$cyl =as.factor(df$cyl)

#styling plot

ggplot(df, aes(x=wt, y=mpg, color = cyl))+
  geom_point(size=3)+
  scale_color_viridis_d(name="cylinders")+
  labs( 
    title = "Fuel Efficiancy by car weight",
      x= "weight (1000 lbs)",
      y= "Miles per Gallon")











