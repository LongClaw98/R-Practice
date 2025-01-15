library(tidyverse)
penguins %>% arrange(-bill_length_mm)

#group by  

penguins %>% 
     group_by(island) %>% 
     drop_na() %>%
     summarise(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>%  summarize(max_bill_length_mm = max(bill_length_mm))

penguins %>% 
  group_by(species, island) %>% 
  drop_na()  %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm), max_bill_length_mm = max(bill_length_mm))


# filter
penguins %>% filter(species == "Adelie")
