## Create project folder
if(!file.exists("./ExData_Plotting2")){dir.create("./ExData_Plotting2")}

## Download zip file and unzip
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(fileUrl,destfile="./ExData_Plotting2/2FNEI_data.zip",mode='wb')

unzip(zipfile="./ExData_Plotting2/2FNEI_data.zip",exdir="./ExData_Plotting2")

## Read rds objects into a dataframe and omit NA's

summarySCC_PM25 <- readRDS('summarySCC_PM25.rds')
summarySCC_PM25 <- na.omit(summarySCC_PM25)

Source_Classification_Code <- readRDS('Source_Classification_Code.rds')
Source_Classification_Code <- na.omit(Source_Classification_Code)
