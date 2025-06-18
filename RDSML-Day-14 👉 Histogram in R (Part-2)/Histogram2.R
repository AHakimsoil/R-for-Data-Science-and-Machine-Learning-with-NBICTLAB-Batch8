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

#We can change the position adjustment to use for overlapping points on the layer

#possible values for the argument position are
#"identity", "stack", "dodge". default value is "stack"

#interleaved histogram
ggplot(dataset,aes(x=weight, fill=sex))+
  geom_histogram(color = "white", alpha=0.5, position ="dodge")

ggplot(dataset,aes(x=weight, fill=sex))+
  geom_histogram(color = "white", alpha=0.5, position ="stack")

ggplot(dataset,aes(x=weight, fill=sex))+
  geom_histogram(color = "white", alpha=0.5, position ="dodge")+
theme(legend.position = "top")

#The plyr package is used to calculate the mean weight of each group

#install.packages("plyr")
library(plyr)
group_means =ddply(dataset, "sex", summarise, grp.mean= mean(weight))

group_means

#adding mean line
histo2plot= ggplot(dataset,aes(x=weight, fill=sex))+
  geom_histogram(color = "white", alpha=0.5, position ="dodge")+
  geom_vline(data= group_means, aes(xintercept = grp.mean, color=sex), linetype ="dashed")+
  theme(legend.position = "top")
  
histo2plot

#Using custom color palettes
histo2plot + scale_alpha_manual(values = c("#999999", "#E69F00"))+
  scale_fill_manual(values = c("#999999", "#E69F00") )

#Using brewer color palettes
histo2plot + scale_colour_brewer(palette ="Dark2")+
  scale_fill_brewer(palette = "Dark2")


#Using a grey scale
histo2plot+scale_color_grey()+scale_fill_grey()
theme_classic()

