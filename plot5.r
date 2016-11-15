library('ggplot2')
## recall summarySCC_PM25 and Source_Classification_Code dataframe(df) objects from the previous code

summarySCC_PM25 <- na.omit(summarySCC_PM25)
Source_Classification_Code <- na.omit(Source_Classification_Code)

## join both df objects to give a one-to-one correspondance between Source Classification Code (SCC) and Description to identify those
## SCC codes associated with coal

mergeDf <- merge(summarySCC_PM25, Source_Classification_Code, by='SCC', all=TRUE)

## Subset the resulting df for each gasoline  related SCC valiue and plot accordingly
## scc= 2260005050, 2265005050, 30531009, 2265008000
## The following SCC values have been omitted due to lack of data points, 2260004070, 2260007020, 2260008000, 2265004070, 2265007020

SCC_MergedDf <- subset(mergeDf, mergeDf$SCC=='scc')  
png(file='plot3.png', width=480, height=480)
qplot(Emissions, year, data=SCC_MergedDf, facets=.~Short.Name)
dev.off

