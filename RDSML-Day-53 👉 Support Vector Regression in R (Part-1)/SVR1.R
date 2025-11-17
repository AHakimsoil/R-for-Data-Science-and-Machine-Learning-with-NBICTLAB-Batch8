
#setup packages and data loading
#install.packages(c("e1071", "ggplot2","dplyr"))

library(e1071)
library(ggplot2)
library(dplyr)

#loading the dataset

dataset =read.csv("Bikesharing.csv")

#Basic cleaning and Feature selection

bike = dataset %>%
  select(cnt, temp, atemp, hum, windspeed, season, yr, mnth, 
         holiday, weekday, workingday, weathersit)

#convert categorical variables to factors

bike = bike%>%
  mutate(
    season=factor(season),
    yr=factor(yr),
    mnth=factor(mnth),
    holiday=factor(holiday),
    weekday=factor(weekday),
    workingday=factor(workingday),
    weathersit=factor(weathersit)
  )
str(bike)

#train/test split
set.seed(123)
n=nrow(bike)
indices = seq_len(n)
train_idx=sample(indices, size=0.7*n)
train_set=bike[train_idx, ]
test_set=bike[-train_idx, ]


