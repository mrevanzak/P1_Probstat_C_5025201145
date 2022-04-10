# a
lambda = 3
dexp(x = seq(1, 10, by = 0.1) , rate = lambda)

# b
set.seed(1)
hist(rexp(n = 10, rate = lambda))
set.seed(1)
hist(rexp(n = 100, rate = lambda))
set.seed(1)
hist(rexp(n = 1000, rate = lambda))
set.seed(1)
hist(rexp(n = 10000, rate = lambda))

# c
n = 100
mean(rexp(n = n, rate = lambda))
var(rexp(n = n, rate = lambda))