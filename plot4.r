## call library ggplot2 for graphing
library('ggplot2')

## recall summarySCC_PM25 and Source_Classification_Code dataframe(df) objects from the previous code

summarySCC_PM25 <- na.omit(summarySCC_PM25)
Source_Classification_Code <- na.omit(Source_Classification_Code)

## join both df objects to give a one-to-one correspondance between Source Classification Code (SCC) and Description to identify those
## SCC codes associated with coal

mergeDf <- merge(summarySCC_PM25, Source_Classification_Code, by='SCC', all=TRUE)

## Subset the resulting df for each coal related SCC valiue and plot accordingly
## scc= 30501023, 30531008, 30531009, 30531010, 30531011, 30531012, 30531014, 30531015, 30531016, 30531017, 30531090, 30531099
## The following SCC values have been omitted due to lack of data points, 30531001, 30531004, 30531006, 30531007

SCC_MergedDf <- subset(mergeDf, mergeDf$SCC=='scc')  
png(file='plot3.png', width=480, height=480)
qplot(Emissions, year, data=SCC_MergedDf, facets=.~Short.Name)
dev.off
