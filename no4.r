# https://www.geeksforgeeks.org/chi-square-distribution-in-r/
# a
X = 2
v = 10
dchisq(x = X,df = v)

# b
x <- rchisq(n = 100, df = v)
hist(x, 
     freq = FALSE, 
     xlim = c(0,25), 
     ylim = c(0,0.15))
  
curve(dchisq(x, df = v), from = 0, to = 25, 
      n = 100, col= 'red', lwd=2, add = T)

# c
v #mean
2*v #variance