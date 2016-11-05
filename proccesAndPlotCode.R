## Download file and unzip
if(!file.exists("./ExData_Plotting1")){dir.create("./ExData_Plotting1")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./ExData_Plotting1/Data.zip",mode='wb')
unzip(zipfile="./ExData_Plotting1/Data.zip",exdir="./ExData_Plotting1")

## Read text file into a dataframe object
electricityObject <-read.csv('./ExData_Plotting1/household_power_consumption.txt', sep=';', header=TRUE)


## Use library lubridate to create an additional column in the dataframe that is a POSIXct (date) object 
## and not a factor variable
library(lubridate)
electricityObject$Date2 <- dmy(electricityObject$Date)
electricityDateRange <- subset(electricityObject, Date2 >= as.POSIXct('2007-02-01 00:00') & Date2 <= as.POSIXct('2007-02-02 23:59'))

## change the 'Global_active_power' variable from a factor to a numeric for plotting
electricityDateRange$Global_active_power2 <- as.numeric(as.character(electricityDateRange$Global_active_power))

## Now plot the file to a png file 	
png(file='plot1.png')
hist(electricityDateRange$Global_active_power2, col='red', main='Global Active Power', xlab='Global Active Power(KilowWatts)')
dev.off()
