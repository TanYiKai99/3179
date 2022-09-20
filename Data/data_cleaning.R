setwd("C:/Users/tappe/OneDrive/Desktop/Stuff/Work/Data Visualisation/Assignment 2/Data 2//")
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
