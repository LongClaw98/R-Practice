library(tidyverse)
library(skimr)
library(janitor)

hotel_booking <- read.csv("~/hotel_bookings.csv")



head(hotel_booking)
glimpse(hotel_booking)
str(hotel_booking)
colnames(hotel_booking)

# manipulate data

arrange(hotel_booking)
hotel_booking_v2 <- arrange(hotel_booking,desc(lead_time))
head(hotel_booking_v2)

max(hotel_booking$lead_time)
min(hotel_booking$lead_time)

mean(hotel_booking$lead_time)

hotel_filter_city <- filter(hotel_booking,hotel_booking$hotel=="City Hotel")
head(hotel_filter_city)
mean(hotel_filter_city$lead_time)

# summary

hotel_summary <- hotel_booking %>% 
  group_by(hotel) %>% 
  summarize(average_lead_time = mean(lead_time),
            min_lead_time = min(lead_time),
            max_lead_time = max(lead_time))
print(hotel_summary)
head(hotel_summary)
