

## Simple PLOT, world consumption
library(readr)
 solar_energy_consumption_by_region <- read_csv("Desktop/solar-energy-consumption.csv")
Parsed with column specification:
library(ggplot2)
colnames(df)<- c("World", "ID", "Year", "Consumption")
colnames(df)<- c("World", "ID", "Year", "Consumption")
p <- ggplot(df, aes(x=Year, y=Consumption)) + geom_bar(stat="identity")
p


 library(readr)
 solar_energy_consumption_by_region <- read_csv("Desktop/solar-energy-consumption-by-region.csv")
 View(solar_energy_consumption_by_region)
 cons<- solar_energy_consumption_by_region
 colnames(cons)<- c("Entity", "Code", "Year", "Consumption")
 library(tidyverse)
conscont<-cons %>% filter(Entity== "Africa"| Entity== "Asia Pacific"|
                          Entity== "Australia"| Entity == "Europe"|
                          Entity== "North America"| Entity== "South America")

ggplot(conscont, aes(x=Year, y= Consumption, col=Entity))+geom_point()+geom_line()+xlim(2000,2018)+theme_bw()
Picking joint bandwidth of 6.07 

