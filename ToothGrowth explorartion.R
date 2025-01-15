data("ToothGrowth")
View(ToothGrowth)

# Normal coding

filtered_tg <- filter(ToothGrowth, dose == 0.5)
View(filtered_tg)

View(arrange(filtered_tg, len))

# Nested

arrange(filter(ToothGrowth, dose == 0.5), len)

# Pipe %>% 

filttered_toothgrowrth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T), group ="drop")