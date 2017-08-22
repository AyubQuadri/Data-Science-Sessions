## Example 1

## Chi-sqr test
  #Goodness of fit test 
  Observed = c(965,10,9,9,7)
  Expected = c(0.977,0.008,0.008,0.006,0.001)
  
  chisq.test(x= Observed,p= Expected)


## Example 2  
#Calculate covariane, correlation, r-square
  
  
IntRate = c(7.43, 7.48, 8.00, 7.75, 7.60, 7.63,7.68, 7.67, 7.59, 8.07, 8.03, 8.00)

FutureIndex = c(221,222,226,225,224,223,223,226,226,235,233,241)

cov(IntRate,FutureIndex)

cor(IntRate,FutureIndex)

