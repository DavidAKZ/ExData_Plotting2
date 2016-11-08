x<- summarySCC_PM25$year
y<- summarySCC_PM25$Emissions

png(file='plot1.png', width=480, height=480)

plot(x,y, pch=19, main="pm2.5 by Year", xlab="Year", ylab="pm2.5 Emissions")

dev.off()
