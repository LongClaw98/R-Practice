# Facets

#    i) facet_wrap = can make facets with 1 variable
#   ii) facet_grid = can make facets with multi variables

library(palmerpenguins,tidyverse)
data(penguins)

# facet_grid woth penugins dataset  

ggplot(data=penguins)+aes(x=flipper_length_mm,y = body_mass_g,color=species)+geom_point()+facet_wrap(~species)

# diamond dataset
data(diamons)
ggplot(data=diamonds,aes(x=color,fill=cut))+geom_bar()+facet_wrap(~cut)

# facet_grid  -facet_grid can make facet with mutliple variable
ggplot(data=penguins) + aes(x= flipper_length_mm, y = body_mass_g,color = species)+geom_point()+facet_grid(sex~species)
