# Peer-graded Assignment: Exploratory Data Analysis Course Project
      
These are the basic steps that describe the files 
and how to execute scripts to accomplish Exploratory Data Analysis Course Project.

Files:
 * Readme.md
 * plot1.R
 * plot2.R
 * plot3.R
 * plot4.R
 * plot5.R
 * plot6.R

### Readme.md
The file that contains description of how to execute the scripts and others useful data.

### plot1.R
Answer the question below and plot a graph to show it
Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?

### plot2.R
Answer the question below and plot a graph to show it
Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008?

### plot3.R
Answer the question below and plot a graph to show it
Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City?

### plot4.R
Answer the question below and plot a graph to show it
Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?

### plot5.R
Answer the question below and plot a graph to show it
How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?

### plot6.R
Answer the question below and plot a graph to show it
Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

### Script Execution
In order to execute and get correctly data from the current script you have to follow the steps:

1. Download files from github repository:
```
git clone https://github.com/rfribeiro/ExploratoryDataAnalysisCourseProject.git
```
2. Open RStudio
3. Load plotX.R file on RStudio
```
source('C:/ExploratoryDataAnalysisCourseProject/plotX.R')
```
4. Execute function plotX()
```
> plotX()
```
5. The exit will be a file called "plotX.png" on same folder of git repository