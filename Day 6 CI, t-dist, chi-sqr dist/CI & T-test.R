qnorm(0.05)
qnorm(0.95)


# Example 1: Calculate the confidence interval of given data below
# mean (m)= 5
# standar deviation (stdDev) = 2, 
# sample size (n) = 20
# std error (SE) = Z* (SE/sqrt(n))
  # where z -> z-score at 95% two tailed so 2.5% both sides
  #       z -> qnorm(1 - 0.025) 

# Confidence Interval = (Mean - SE, Mean, Mean+ SE)

m = 5
stdDev = 2
n = 20
z = qnorm(1-0.025)

SE = z*stdDev/sqrt(n)

left_CI = m-SE
right_CI = m+SE

print(left_CI)
print(m)
print(right_CI)

# t-test for two sample data _ paird data 
B = c(55,62,108,77,83,78,79,94,69,66,72,77)
A=  c(63,54,79,68,87,84,92,57,66,53,76,63)

t.test(A,B,alternative = "two.sided",paired = TRUE)

# t-test for two sample data _ unpaird data 

controlSub = c(0.81,1.06,0.43,0.54,0.68,
               0.56,0.45,0.88,0.73,0.43,
               0.46,0.43,0.37,0.73,0.93)

treatedSub = c(1.15,1.28,1.00,0.95,1.06,
               1.15,0.72,0.79,0.67,1.21,
               0.92,0.67,0.76,0.82,0.82)

t.test(treatedSub,controlSub, alternative = "two.sided", var.equal = FALSE)
