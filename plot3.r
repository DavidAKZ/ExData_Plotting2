##plot3

## open to file plotting
png(file = "plot3.png")
par(bg = "transparent")

##plot axes of the graph
plot(electricityDateRange$Date2, electricityDateRange$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "", col = "black", ylim = c(0,40))
plot(electricityDateRange$Date2, electricityDateRange$Sub_metering_2, type = "n", ylab = "Energy sub metering", xlab = "", col = "red", ylim = c(0,40))
plot(electricityDateRange$Date2, electricityDateRange$Sub_metering_3, type = "n", ylab = "Energy sub metering", xlab = "", col = "blue", ylim = c(0,40))

##plot lines of the graph
lines(electricityDateRange$Date2, electricityDateRange$Sub_metering_1, col = "black")
lines(electricityDateRange$Date2, electricityDateRange$Sub_metering_2, col = "red")
lines(electricityDateRange$Date2, electricityDateRange$Sub_metering_3, col = "blue")
legend("topright", lty= 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## close file for plotting
dev.off()
