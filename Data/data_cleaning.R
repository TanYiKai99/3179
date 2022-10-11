setwd("C:/Users/tappe/OneDrive/Desktop/Stuff/Work/Data Visualisation/Assignment 2/Data/")
library("dplyr")
library("stringr")

Michelin_guide = read.csv("yummy.csv")
head(Michelin_guide)
Michelin_guide = Michelin_guide[,c("Name","Address","Location","Cuisine",
                                   "Longitude", "Latitude", "Award", "Explanation",
                                   "Min_Price...", "Max_Price...")]

head(Michelin_guide$Address)
Country = word(Michelin_guide$Address,-1)
Country[Country == "Kingdom"] <- "United Kingdom"
Country[Country == "Kong"] <- "Hong Kong"
Country[Country == "States"] <- "United States"
Country[Country == "Republic"] <- "Czech Republic"
Country[Country == "Korea"] <- "South Korea"
Country[Country == "Marino"] <- "San Marino"

Country
Michelin_guide = cbind(Michelin_guide,Country)
head(Michelin_guide)
unique(Country)
unique(Michelin_guide$Country)
Michelin_guide = Michelin_guide[,c("Name","Location","Cuisine",
                                                 "Longitude", "Latitude", "Award", "Explanation",
                                                 "Min_Price...", "Max_Price...", "Country")]
head(Michelin_guide)
write.csv(Michelin_guide,"Michelin_guide.csv")

France_Michelin = read.csv("Michelin_guide.csv")
France_Michelin <- France_Michelin[France_Michelin$Country == "France",]
write.csv(France_Michelin, "France.Michelin.csv")

Michelin_guide = read.csv("Michelin_guide.csv")
three_star = Michelin_guide[Michelin_guide$Award == "3 MICHELIN Stars",]
three_star = count(three_star, Country)
three_star = rename(three_star, Count = n)
three_star = three_star[three_star$Count>=1,]
write.csv(three_star,"three_star.csv")


two_star = Michelin_guide[Michelin_guide$Award == "2 MICHELIN Stars",]
two_star = count(two_star, Country)
two_star = rename(two_star, Count = n)
two_star = two_star[two_star$Count>=1,]
write.csv(two_star,"two_star.csv")


one_star = Michelin_guide[Michelin_guide$Award == "1 MICHELIN Star",]
one_star = count(one_star, Country)
one_star = rename(one_star, Count = n)
one_star = one_star[one_star$Count>=1,]
write.csv(one_star,"one_star.csv")


Bib_Gourmand = Michelin_guide[Michelin_guide$Award == "Bib Gourmand",]
Bib_Gourmand = count(Bib_Gourmand, Country)
Bib_Gourmand = rename(Bib_Gourmand, Count = n)
Bib_Gourmand = Bib_Gourmand[Bib_Gourmand$Count>=1,]
write.csv(Bib_Gourmand,"Bib_Gourmand.csv")

summary(Michelin_guide$Min_Price...)
summary(Michelin_guide$Max_Price...)
sum(is.infinite(Michelin_guide$Min_Price...))
sum(is.infinite(Michelin_guide$Max_Price...))
plot(Michelin_guide$Min_Price...,Michelin_guide$Max_Price...)

library(plyr)
Michelin_guide = read.csv("Michelin_guide.csv")
Michelin_guide$Min_Price... = round_any(Michelin_guide$Min_Price...,5)
Michelin_guide$Max_Price... = round_any(Michelin_guide$Max_Price...,5)
price_ranges = Michelin_guide[,c("Award","Min_Price...","Max_Price...")]
write.csv(price_ranges,"price_ranges.csv")
test = paste(Michelin_guide$Cuisine, collapse = ' ')
test

max(Michelin_guide$Min_Price...)
max(Michelin_guide$Max_Price...)
