# https://rpubs.com/mpfoley73/458721
# a
p = 0.20
n = 3
dgeom(x = n, prob = p)

# b
mean(rgeom(n = 10000, prob = p) == 3)

# c
# Hasil dari a (nilai eksak) dan b (nilai simulasi) memiliki hasil yang tidak jauh berbeda

# d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Gagal = ifelse(x == n, n, "lainnya")) %>%
ggplot(aes(x = factor(x), y = prob, fill = Gagal)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 gagal sebelum sukses pertama",
       x = "Gagal sebelum sukses pertama (x)",
       y = "Peluang") 

# e
1/p #mean
(1 - p) / p^2 #variance


