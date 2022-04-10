# https://bookdown.org/gabriel_butler/ECON41Labs/tutorial-5-the-poisson-distribution.html
# a
X = 6
lambda = 4.5
dpois(x = X, lambda = lambda)

# b
n = 365

library(dplyr)
library(ggplot2)

bayi = data.frame(prob = rpois(n = n, lambda = lambda))

bayi %>%
  ggplot() +
  geom_histogram(aes(x = prob, 
                    y = stat(count / sum(count)), 
                    fill = prob == 6),
                binwidth = 1, 
                color = "black") +
  scale_x_continuous(breaks = 0:10) +
  labs(title = "Simulasi kelahiran 6 bayi akan lahir",
       x = "Angka kelahiran bayi per periode",
       y = "Proporsi kelahiran bayi")
# c
bayi %>% dplyr::summarize(enam_bayi = sum(bayi$prob == 6) / n())

# d
lambda #mean
lambda #variance
