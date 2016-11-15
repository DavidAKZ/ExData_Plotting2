# ExData_Plotting2
```diff
+ Answers to questions in green below
```
Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI). You can read more information about the NEI at the EPA National Emissions Inventory web site.

For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year. The data that you will use for this assignment are for 1999, 2002, 2005, and 2008.


##Review criteria

For each question

Does the plot appear to address the question being asked?
Is the submitted R code appropriate for construction of the submitted plot?

##Data
The data for this assignment are available from the course web site as a single zip file:<br />

[Data for Peer Assessment [29Mb]](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip)
The zip file contains two files:

PM2.5 Emissions Data (𝚜𝚞𝚖𝚖𝚊𝚛𝚢𝚂𝙲𝙲_𝙿𝙼𝟸𝟻.𝚛𝚍𝚜): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. Here are the first few rows.


|## |   | fips |     SCC |Pollutant |Emissions |  type| year|
|---|:-:|:----:|:-------:|:--------:|:--------:|:----:|:---:|
|## |4  |09001 |10100401 | PM25-PRI |   15.714 |POINT |1999 |
|## |8  |09001 |10100404 | PM25-PRI |  234.178 |POINT |1999 |
|## |12 |09001 |10100501 | PM25-PRI |    0.128 |POINT |1999 |
|## |16 |09001 |10200401 | PM25-PRI |    2.036 |POINT |1999 |
|## |20 |09001 |10200504 | PM25-PRI |    0.388 |POINT |1999 |
|## |24 |09001 |10200602 | PM25-PRI |    1.490 |POINT |1999 |

**𝚏𝚒𝚙𝚜**: A five-digit number (represented as a string) indicating the U.S. county<br />**𝚂𝙲𝙲**: The name of the source as indicated by a digit string (see source code classification table)

**𝙿𝚘𝚕𝚕𝚞𝚝𝚊𝚗𝚝**: A string indicating the pollutant

**𝙴𝚖𝚒𝚜𝚜𝚒𝚘𝚗𝚜**: Amount of PM2.5 emitted, in tons

**𝚝𝚢𝚙𝚎**: The type of source (point, non-point, on-road, or non-road)

**𝚢𝚎𝚊𝚛**: The year of emissions recorded


Source Classification Code Table (𝚂𝚘𝚞𝚛𝚌𝚎_𝙲𝚕𝚊𝚜𝚜𝚒𝚏𝚒𝚌𝚊𝚝𝚒𝚘𝚗_𝙲𝚘𝚍𝚎.𝚛𝚍𝚜): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

You can read each of the two files using the 𝚛𝚎𝚊𝚍𝚁𝙳𝚂() function in R. <br />
NEI <- readRDS("summarySCC_PM25.rds") <br />
SCC <- readRDS("Source_Classification_Code.rds") <br />
as long as each of those files is in your current working directory (check by calling 𝚍𝚒𝚛() and see if those files are in the listing). <br /> <br />
**Assignment**  <br /> 
The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. You may use any R package you want to support your analysis.

**Questions**

You must address the following questions and tasks in your exploratory analysis. For each question/task you will need to make a single plot. Unless specified, you can use any plotting system in R to make your plot.

1.Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008. <br />

```diff
+ With the exception of one outlier, pm2.5 emmissions have decreaded over the time period

```

2.Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008? Use the base plotting system to make a plot answering this question. <br />

```diff
+ pm2.5 emmissions have decreaded over the time period

```

3.Of the four types of sources indicated by the 𝚝𝚢𝚙𝚎 (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question. <br />

```diff
+ all emmission types have reduced
```

4.Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008? <br />

```diff
+ Emissions vary depending on  what Source Classification Code (SCC) over time is drawn. SCC values 
+ and their descriptions are shown below

|-------:|:----------------------------------------------------------------:|
| SCC     |Description                                                      | 
|-------:|:----------------------------------------------------------------:|
|30501023 |Coal Mining, Cleaning & Material Handling /Loading               | 
|30531008 |Coal Mining, Cleaning & Material Handling /Unloading             |
|30531009 |Coal Mining, Cleaning & Material Handling /Raw Coal Storage      |
|30531010 |Coal Mining, Cleaning & Material Handling /Crushing              |
|30531011 |Coal Mining, Cleaning & Material Handling /Coal Transfer         |
|30531012 |Coal Mining, Cleaning & Material Handling /Screening             | 
|30531014 |Coal Mining, Cleaning & Material Handling /Cleaned Coal Storage  |
|30531015 |Coal Mining, Cleaning & Material Handling /Loading               |
|30531016 |Coal Mining, Cleaning & Material Handling /Loading: Clean Coal   |
|30531017 |Coal Mining, Cleaning & Material Handling /Secondary Crushing    |
|30531090 |Coal Mining, Cleaning & Material Handling /Haul Roads: General   |
|30531099 |Coal Mining, Cleaning & Material Handling /Other Not Classified  |
|-------:|:----------------------------------------------------------------:|
+ The following SCC values were omitted due to lack of data

```


5.How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City? <br /> <br />
6.Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (𝚏𝚒𝚙𝚜 == "𝟶𝟼𝟶𝟹𝟽"). Which city has seen greater changes over time in motor vehicle emissions? <br /> <br />
**Making and Submitting Plots** <br />
For each plot you should

*Construct the plot and save it to a PNG file. <br />
*Create a separate R code file (𝚙𝚕𝚘𝚝𝟷.𝚁, 𝚙𝚕𝚘𝚝𝟸.𝚁, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file. Only include the code for a single plot (i.e. 𝚙𝚕𝚘𝚝𝟷.𝚁 should only include code for producing 𝚙𝚕𝚘𝚝𝟷.𝚙𝚗𝚐) <br />
*Upload the PNG file on the Assignment submission page <br />
*Copy and paste the R code from the corresponding R file into the text box at the appropriate point in the peer assessment.
