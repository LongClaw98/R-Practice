library(tidyverse)
hotel_bookings <- read_csv("~/hotel_bookings.csv")

ggplot(hotel_bookings,aes(x=lead_time, y = children)) + geom_point(positoion = "jitter")


# to know which segment generates largest  numbers of bokings

ggplot(hotel_bookings,aes(x=hotel,fill =market_segment )) + geom_bar()

# adding facet_wrap() to get more clear picture of the data 

ggplot(hotel_bookings,aes(x=hotel,fill =market_segment )) + geom_bar() + facet_wrap(~market_segment)

# relationship between city hotel and leadtime_booking with children

onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel=="City Hotel" & 
                                  hotel_bookings$market_segment=="Online TA"))

# plot on onlineta_city_hotels

ggplot(onlineta_city_hotels,aes(x= lead_time,y = children))+geom_point()
