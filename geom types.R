library(tidyverse)
library(palmerpenguins)

# Changing geom

ggplot(data = penguins) +
  geom_smooth(mapping =aes(x = flipper_length_mm,y = body_mass_g),color = "orange")

# adding another geom

ggplot(data = penguins) +
  geom_smooth(mapping =aes(x = flipper_length_mm,y = body_mass_g),color = "orange") + 
  geom_point(mapping =aes(x = flipper_length_mm,y = body_mass_g))
             
# alloting different line type for each species

ggplot(data = penguins) +
  geom_smooth(mapping =aes(x = flipper_length_mm,y = body_mass_g,linetype= species),color = "orange")

# geom jitter

ggplot(data = penguins) +
  geom_jitter(mapping = aes(x = flipper_length_mm,y = body_mass_g))



# Diamonds Datasets

data("diamonds")

ggplot(data = diamonds)+ geom_bar(mapping = aes(x=cut,color = cut))

# filling colors

ggplot(data = diamonds)+ geom_bar(mapping = aes(x=cut,fill = cut))

# filling clarity

ggplot(data = diamonds)+ geom_bar(mapping = aes(x=cut,fill = clarity))

#another way to write code for ggplot

ggplot(data = diamonds, aes(x= x,y= y))+geom_point()+geom_smooth()

# with penguins datasset

ggplot(data = penguins, aes(x= flipper_length_mm,y= body_mass_g))+geom_point()+geom_smooth()
