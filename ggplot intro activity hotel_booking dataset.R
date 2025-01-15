library(tidyverse,read.csv)
hotel_bookings <- read.csv("~/hotel_bookings.csv")
head(hotel_bookings)

library(ggplot2)

ggplot(data = hotel_bookings) + 
  geom_point(mapping = aes(x= lead_time,y=children))

# hypothesis testing if guest without children book most of the weekend knights

ggplot(data = hotel_booking) + 
  geom_point(mapping = aes(x= stays_in_weekend_nights,y= children))
