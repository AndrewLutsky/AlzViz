#This is a test
#requires tidyTuesdayR, usmaps packages
library(readr)
library(tinytuesdayR)
library(usmap)
tuesdata <- tidytuesdayR::tt_load('2023-05-09')
tuesdata <- tidytuesdayR::tt_load(2023, week = 19)

childcare_costs <- tuesdata$childcare_costs
counties <- tuesdata$counties


#you can replace mc toddler with a different value and it will still return a map graph
df <- data.frame(childcare_costs)
df2 <- data.frame(fips = df$county_fips_code, values = df$mc_toddler)
plot_usmap(regions=c("county"), data = df2)
