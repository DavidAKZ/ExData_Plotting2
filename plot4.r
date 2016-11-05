#plot4
png(file = "plot4.png", width=480, height=480)
par(bg = "transparent", mfrow = c(2,2))


#Plot[1,1]
plot(electricityDateRange$Date2, electricityDateRange$Global_active_power, type = "n", ylab = "Global Active Power", xlab = "", col = "black")
lines(electricityDateRange$Date2, electricityDateRange$Global_active_power, col = "black")

#Plot[1,2]

	plot(electricityDateRange$Date2, electricityDateRange$Voltage, type = "n", ylab = "Voltage", xlab = "datetime", col = "black")
lines(electricityDateRange$Date2, electricityDateRange$Voltage, col = "black")

#Plot[2,1]
plot(electricityDateRange$Date2, electricityDateRange$Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "", col = "black", ylim = c(0,40))
points(electricityDateRange$Date2, electricityDateRange$Sub_metering_2, type = "n", ylab = "Energy sub metering", xlab = "", col = "red", ylim = c(0,40))
points(electricityDateRange$Date2, electricityDateRange$Sub_metering_3, type = "n", ylab = "Energy sub metering", xlab = "", col = "blue", ylim = c(0,40))
lines(electricityDateRange$Date2, electricityDateRange$Sub_metering_1, col = "black")
lines(electricityDateRange$Date2, electricityDateRange$Sub_metering_2, col = "red")
lines(electricityDateRange$Date2, electricityDateRange$Sub_metering_3, col = "blue")
legend("topright", lty= 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n")

#Plot[2,2]

plot(electricityDateRange$Date2, electricityDateRange$Global_reactive_power, ylab = "Global_reactive_power", type = "n", xlab = "datetime", col = "black")
lines(electricityDateRange$Date2, electricityDateRange$Global_reactive_power, col = "black")

dev.off()
