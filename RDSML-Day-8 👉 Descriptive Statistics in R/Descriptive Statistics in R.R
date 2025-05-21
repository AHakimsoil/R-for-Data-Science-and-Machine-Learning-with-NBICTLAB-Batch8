#Descriptive statistics  using the psych package

install.packages("psych")
library(psych)
data()
AirPassengers
BOD

#using the New York airport flight data
install.packages("nycflights13")

library(nycflights13)
attach(nycflights13::flights)

#Lets look at the first 6 records using the head() function

head(nycflights13::flights)

nycflights13::flights

head(nycflights13::flights)
summary(distance)
describe(distance)
describe.by(distance)
describeBy(distance)

cbind(arr_delay, dep_delay, distance)
demo=cbind(arr_delay, dep_delay, distance)
demo

describe(demo)

