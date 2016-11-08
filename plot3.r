## load ggplot2 library
library('ggplot2')

## re state object from plot 2 for Baltimore City
summarySCC_PM25_BaltimoreCity <- subset(summarySCC_PM25, summarySCC_PM25$fips==24510)

## plot emissions per year v four polution source types
png(file='plot3.png', width=480, height=480)
qplot(year, Emissions, data=summarySCC_PM25_BaltimoreCity, facets =.~type) 
dev.off


