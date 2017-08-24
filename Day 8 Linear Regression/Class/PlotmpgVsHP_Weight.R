#Example of Mulitple linar regression using Mtcars dataset
require(plot3D)

attach(mtcars)

# linear fit
Model <- lm(mpg ~ wt+hp)
summary(Model)

#Predicted values using model
fitpoints <- predict(Model)

#compare the actual value vs predicted value
mtcars$mpg
fitpoints

#Estimate the residual & plot the residuals
residual = mtcars$mpg - fitpoints
plot(residual)

detach(mtcars)

