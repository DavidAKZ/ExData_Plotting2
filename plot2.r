## subset the data for Baltimore City
summarySCC_PM25_BaltimoreCity <- subset(summarySCC_PM25, summarySCC_PM25$fips==24510)

## select the required variables to map
x<-summarySCC_PM25_BaltimoreCity$year
y<-summarySCC_PM25_BaltimoreCity$Emissions

## plot the resulting figure to a file
png(file='plot2.png', width=480, height=480)
plot(x,y, pch=19,main="pm2.5 by Year -Baltimore City", xlab="Year", ylab="pm2.5 Emissions")
dev.off()

