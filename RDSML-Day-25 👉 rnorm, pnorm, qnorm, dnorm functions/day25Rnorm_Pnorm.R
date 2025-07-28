
#rnorm (randon normal distribution)
#we want 10 value of std = closeto 1 and mean close to /= 0
#rnorm(10)
#x= rnorm(10)
mean(x)
sd(x)
rnorm(1000)
x=rnorm(1000)
mean(x)
sd(x)
rnorm(1000, mean=0, sd=1)


y= rnorm(10, mean=100, sd=5)
y
mean(y)

sd(y)

#pnorm 

#at z =0 , then the value of probability 0.5

pnorm(0)

pnorm(-1.96)

pnorm(-1.64)

# qnorm

qnorm(0.5)
qnorm(0.024)

#dnorm
# Y axis value for z=0

dnorm(0)

#lets use dnorm to draw the normal distribution

zvalues = seq(-4.0, 4.0, by =0.1)
dvalues=dnorm(zvalues)
plot(zvalues, dvalues)

