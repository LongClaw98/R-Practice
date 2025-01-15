library(tidyverse)
library(palmerpenguins)
ggplot(penguins,aes(x=flipper_length_mm,y=body_mass_g,colour=species,col. ="pink"))   +
  geom_point()+theme(panel.background =element_rect(fill= "#2E4053"),plot.background=element_rect(fill = "#2C3E50"))

ggsave("Three Penguin species.jpeg")       
       
#saving png
png(file = "exampleplot.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()

# assignment 

hotel_bookings <- read_csv("~/hotel_bookings.csv")

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

# aadding annotation

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+labs(title="Market Segment")

# Adding subtile with min date and max date

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+labs(title="Market Segment",subtitle = paste0("Date from: ",mindate," to ",maxdate))

# cleaning x , y  axis

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+
  theme(axis.text.x = element_text(angle = 45),axis.text = element_text(color = "orange"),
        panel.background = element_rect(fill = "red"),
        plot.background = element_rect(fill = "maroon"),
        plot.title = element_text(color = "white",size = 20 )) +
  labs(title="Booking Rate",caption = paste0("Date from: ",mindate," to ",maxdate),
       x = "Market Segment",
       y = "Number of Bookings")

# Saving 
ggsave("hotel_booking_chart.png")
  
