# practice ggplot()

library(palmerpenguins)
library(tidyverse)

data("penguins")
View(penguins)

ggplot(data = penguins) + geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g)) 

ggplot(data = penguins) + geom_point(mapping = aes(x= bill_length_mm, y = bill_depth_mm)) 




install.packages("Diamonds")
data(Diamonds)

View(diamonds)

ggplot(data = diamonds) + geom_point(mapping = aes(x = price,y = carat)) + facet_grid(~color)






