## load ggplot2 library
library('ggplot2)

## re state x and y variables from plot 2 for Baltimore City
summarySCC_PM25_BaltimoreCity <- subset(summarySCC_PM25, summarySCC_PM25$fips==24510)

x<-summarySCC_PM25_BaltimoreCity$year
y<-summarySCC_PM25_BaltimoreCity$Emissions

## plot emission v four polution source types
png(file='plot3.png', width=480, height=480)
qplot(x,y, data=summarySCC_PM25_BaltimoreCity, color=summarySCC_PM25_BaltimoreCity$type)
dev.off


