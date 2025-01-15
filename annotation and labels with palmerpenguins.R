library(tidyverse)
library(palmerpenguins)

data("penguins")
View(penguins)
# adding annotations
ggplot(data = penguins) + geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g,color=species)) + 
  labs(title = "size wise comparison", subtitle = "by Bodymass & fLipper length",caption = "only among species")+ 
  annotate("text",x=220,y=6000,label="gentoos are the largest penguins",color="orange",fontface="bold",size=6,angle=30)


# using variable instead of whole code again and again

p <- ggplot(data = penguins) + geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g,color=species)) + 
  labs(title = "size wise comparison", subtitle = "by Bodymass & fLipper length",caption = "only among species")+ 
  annotate("text",x=220,y=6000,label="gentoos are the largest penguins",color="orange",fontface="bold",size=6,angle=30)



p+annotate("text", x = 220,y = 3100,label="Larger the mass and 
           length larger the size",colour = "blue")


# other annotations

ggplot(data = penguins) + geom_point(mapping = aes(x= flipper_length_mm, y = body_mass_g,color=species)) + 
  labs(title = "size wise comparison", subtitle = "by Bodymass & fLipper length",caption = "only among species")+ 
  annotate("segment",x= 180,xend =220 ,y = 3000,yend = 5500,size = 1)


ggplot(data = penguins) + geom_point(mapping = aes(x= flipper_length_mm , y = body_mass_g,color=species)) + 
  labs(title = "size wise comparison", subtitle = "by Bodymass & fLipper length",caption = "only among species")+ 
  annotate("text",x=200,y=4550,label = "Streak",size = 40,colour= "Yellow")
