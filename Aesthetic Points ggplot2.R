# Aesthetic points 

# x
# y
# color
# shape
# size
# alpha

library(tidyverse)
library(palmerpenguins)

# adding colors

ggplot(data = penguins) +
  geom_point(mapping =aes(x = flipper_length_mm,y = body_mass_g,color = species))

# adding shapes to the aesthetics


ggplot(data = penguins) +
  geom_point(mapping =aes(x = flipper_length_mm,y = body_mass_g,shape = species, color=species))

# adding side to aesthetics

ggplot(data = penguins) +
  geom_point(mapping =aes(x = flipper_length_mm, y = body_mass_g, color = species, size = species, shape = species))

# Adding alpha aes (allots different shapes to the aes) 

ggplot(data = penguins) +
  geom_point(mapping =aes(x = flipper_length_mm,y = body_mass_g, alpha = species))

# adding  color to whole aes points without differentiating 

ggplot(data = penguins) +
  geom_point(mapping =aes(x = flipper_length_mm,y = body_mass_g),color = "purple")




