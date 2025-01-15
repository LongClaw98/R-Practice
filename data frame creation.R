# data frame creation 

names <- c("onkar", "anup", "paritosh", "ram")
 
age <- c(23,23, 23,23)

people <- data.frame(names, age)
 
# checking 
head(people)
str(people)
glimpse(people)
colnames(people)

# adding columns
mutate(people, age_in_20 = age + 20)


