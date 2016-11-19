#################No occurencies of 'motor vehicle emissions' found, using 'Wood' combustion emissions instead


## call library ggplot2 for graphing
library('ggplot2')

## recall summarySCC_PM25 and Source_Classification_Code dataframe(df) objects from the previous code

summarySCC_PM25 <- na.omit(summarySCC_PM25)
Source_Classification_Code <- na.omit(Source_Classification_Code)

## Subset the Source Classification Code file for occurencies of 'Wood'

wood_SCC<- grep('Wood', Source_Classification_Code$SCC.Level.Four, ignore.case = T)
wood_subset_SCC <- Source_Classification_Code[wood_SCC,]

## Join the wood reference file with the available pm2.5 data file
wood_data <- merge(wood_subset_SCC,summarySCC_PM25)
 
## Widen and heighten the plot as there are 6 sub categories of wood related emissions
png(file='plot5.png', width=4800, height=600)
qplot(year, Emissions, data=wood_data, facets =.~SCC.Level.Four)
dev.off()
