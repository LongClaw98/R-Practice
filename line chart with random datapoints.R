pashas_rollercoaster <- data.frame(horizonTAL = c(4,3,6,2,8,4),
                                   VERTICAL = c(2,4,8,10,12,15))


library(ggplot2)

ggplot(data = pashas_rollercoaster, aes(VERTICAL,horizonTAL))+geom_line(color = "cyan", size = 1.5) 
glimpse(pashas_rollercoaster)
library(palmerpenguins)
install.packages("dplyr")
