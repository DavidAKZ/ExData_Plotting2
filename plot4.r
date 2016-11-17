## call library ggplot2 for graphing
library('ggplot2')

## recall summarySCC_PM25 and Source_Classification_Code dataframe(df) objects from the previous code

summarySCC_PM25 <- na.omit(summarySCC_PM25)
Source_Classification_Code <- na.omit(Source_Classification_Code)

## Subset the Source Classification Code file for occurencies of 'coal'

coal_SCC<- grep('coal', Source_Classification_Code$Short.Name, ignore.case = T)
coal_subset_SCC <- Source_Classification_Code[coal_SCC,]

## Join the coal reference file with the available pm2.5 data file
coal_data <- merge(coal_subset_SCC,summarySCC_PM25)







## join both df objects to give a one-to-one correspondance between Source Classification Code (SCC) and Description to identify those
## SCC codes associated with coal

##mergeDf <- merge(summarySCC_PM25, Source_Classification_Code, by='SCC', all=TRUE)


 
png(file='plot4.png', width=480, height=480)
qplot(year, Emissions, data=coal_data, facets =.~Short.Name)
dev.off
