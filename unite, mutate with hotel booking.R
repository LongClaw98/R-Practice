
library(readr)
hotel_bookings <- read_csv("~/hotel_bookings.csv")


View(hotel_bookings)
glimpse(hotel_bookings)


trimmed_df %>% 
       select(hotel, is_canceled, lead_time) %>% 
       rename(hotel_data = hotel)

example_df <- hotel_bookings %>%
       select(arrival_date_year, arrival_date_month) %>% 
       unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = "-")

guest <- hotel_bookings %>% 
     mutate(guests = adults + children + babies)

canceled <- hotel_bookings %>% count(is_canceled) %>%  drop %>%
