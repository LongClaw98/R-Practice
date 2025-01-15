library(tidyverse)

# tidyverse contains some data sets "diamonds" is one of them to prctice

head(diamonds)
str(diamonds)
glimpse(diamonds)
colnames(diamonds)
rownames(diamonds)

# cleaning

rename(diamonds, carat_new = carat)
rename(diamonds, new_cut = cut)
summarize(diamonds, mean_carat = mean(carat))

# Vizualization

ggplot(data = diamonds, aes(x = carat , y = price, color = cut)) + geom_point()

ggplot(data = diamonds, aes(x = carat , y = price, color = cut)) + geom_point() +
  facet_wrap(~cut)

