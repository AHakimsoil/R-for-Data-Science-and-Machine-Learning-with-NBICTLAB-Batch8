
dataset= data.frame(dose= c("D0.5", "D1", "D2"), len= c(4.2, 10, 29.5),
                    gsg = c(45, 77,7))

library(ggplot2)

#Basic barplot
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity")

# Horizontal barplot
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity")+
  coord_flip()

#Changing the width of bars
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity", width = 0.75)
  
#Changing Bar Color
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity", color= "blue",fill= "white", width = 0.75)

# Minimal theme with blue fill color
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity", color= "blue",fill= "steelblue")+
  theme_minimal()

#Bar plot with labels
#outside bar
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity",fill= "steelblue")+
  geom_text(aes(label=len), vjust =-0.5, size = 3, color= "#000000")+
  theme_minimal()

#inside bar
ggplot(data=dataset, aes(x=dose, y=len))+
  geom_bar(stat = "identity",fill= "steelblue")+
  geom_text(aes(label=len), vjust =1.6, size = 3, color= "#000000")+
  theme_minimal()













