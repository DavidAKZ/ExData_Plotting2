## Read text file into a dataframe object
electricityObject <-read.csv('./ExData_Plotting1/household_power_consumption.txt', sep=';', header=TRUE)


## Use library lubridate to create an additional column in the dataframe that is a POSIXct (date) object 
## and not a factor variable
library(lubridate)

electricityObject$Date2 <- dmy(electricityObject$Date)


electricityDateRange <- subset(electricityObject, Date2 >= as.POSIXct('2007-02-01 00:00') & Date2 <= as.POSIXct('2007-02-02 23:59'))

## change the 'Global_active_power' variable from a factor to a numeric for plotting
electricityDateRange$Global_active_power2 <- as.numeric(as.character(electricityDateRange$Global_active_power))


## paste date and time data in the format '2007-02-02 23:58:00'
electricityDateRange$Date2 <- as.POSIXct(strptime(paste(electricityDateRange[,1], electricityDateRange[,2], sep= " "), "%d/%m/%Y %H:%M:%S"))

## now plot the data
png(file = "plot2.png", width=480, heigth=480)
plot(electricityDateRange$Date2, electricityDateRange$Global_active_power, ylab = "Global Active Power(KiloWatts)", xlab='', col='black', type='n')

lines(electricityDateRange$Date2, electricityDateRange$Global_active_power, col = "black")
