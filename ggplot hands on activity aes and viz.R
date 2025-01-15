library(tidyverse)
hotel_bookings <- read.csv("~/hotel_bookings.csv")

ggplot(data = hotel_bookings,aes(x=distribution_channel,fill=deposit_type))+geom_bar() 

ggplot(data = hotel_bookings,aes(x=distribution_channel,fill=market_segment))+geom_bar()

ggplot(data = hotel_bookings,aes(x=distribution_channel,))+geom_bar()+facet_wrap(~deposit_type)

# changing angle of the axis_text to make it more readable

ggplot(data = hotel_bookings,aes(x=distribution_channel,))+geom_bar()+facet_wrap(~deposit_type)+
  theme(axis.text.x = element_text(angle = 45))

# adding colors to the axis_text

ggplot(data = hotel_bookings,aes(x=distribution_channel))+geom_bar()+facet_wrap(~deposit_type)+
  theme(axis.text.x = element_text(angle = 45,colour = "orange"),axis.text.y=element_text(color = "blue"))

# facets as market_segment

ggplot(data = hotel_bookings,aes(x=distribution_channel))+geom_bar()+facet_wrap(~market_segment)+
  theme(axis.text.x = element_text(angle = 45,colour = "orange"),axis.text.y=element_text(color = "blue"))

# facet_grid 

ggplot(data = hotel_bookings,aes(x=distribution_channel))+geom_bar()+facet_grid(~market_segment)+
  theme(axis.text.x = element_text(angle = 45,colour = "orange"),axis.text.y=element_text(color = "blue"))

ggplot(data = hotel_bookings,aes(x=distribution_channel))+geom_bar()+facet_wrap(~deposit_type)+
  theme(axis.text.x = element_text(angle = 45,colour = "orange"),axis.text.y=element_text(color = "blue"))

# with tow facets

ggplot(data = hotel_bookings,aes(x=distribution_channel))+geom_bar()+facet_wrap(~deposit_type~market_segment)+
  theme(axis.text.x = element_text(angle = 45,colour = "orange"),axis.text.y=element_text(color = "blue"))

