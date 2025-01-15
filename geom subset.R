library(palmerpenguins)
data(penguins)
library(tidyverse)

penguins %>%
  select(species,island, a = bill_depth_mm)

penguins %>% 
  filter(island == "Torgersen") %>% 
  na.exclude()

penguins %>% 
  mutate(length_in_cm = bill_length_mm/1000)

arrange(penguins,desc(bill_length_mm))
        

ggplot(penguins,aes(x = bill_length_mm,y = body_mass_g,color = species, position = "jitter")) + coord_map()


countries <- c("India", "USA", "China", "Russia","Spain")
num <- c(12,12,20,30,32)
Data <- data.frame(
  countries = c("India", "USA", "China", "Russia","Spain"),
  num = c(12,12,20,30,32)
  )
ggplot(subset(Data, countries %in% c("India","USA","Spain")), aes(y=num,x = countries,fill = countries)) + geom_col()  

ggplot(subset(Data, num %in%c(12,12,30,32)), aes(y=num,x = countries,fill = countries)) + geom_col()  
