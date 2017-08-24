## Simple Linear Regression
## Data set: Speed Vs carStop
## Prediction: predict the stopping distance with respect to the speed of a car
## y= m(x) + c
## stopDist = intercept(speed.mph)+ C
## stopDist = 3.13(speed.mph) -20.27

setwd("C:/Users/quadris/Desktop/Webinar on AI & Decision Science/Sessions/Day 8 Linear Regression/Class")

carstop <- read.csv("SpeedVsStopNADA.csv", header = T, sep = ",")

#Build a linear Model
lmstop <- lm(StopDist.ft~ Speed.mph, data=carstop )

summary(lmstop)

shapiro.test(lmstop$residuals)  # Check if the residuals are Normally distributed
library(ggplot2)
# Try drawing a smoothed line using LOcally Weighted RegrESSion (loess)
# If you have ggplot2 installed, the line below will work
ggplot(carstop,aes(x=Speed.mph, y=StopDist.ft)) + geom_point()+geom_smooth(method="loess")

#or

with(carstop, scatter.smooth(Speed.mph,StopDist.ft,family="gaussian"))

# Check the plot of Residuals
plot(lmstop$residuals)



