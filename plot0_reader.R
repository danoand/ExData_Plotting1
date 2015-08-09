##############################################################################################
# Description:
# read0.r is an R script that reads raw data and executes a set of transformations producing
#    a R data file that can be used to generate plots for Project 1 of the Exploratory Data Analysis course
#
# Script Process:
#  1. Read the raw machine learning datafile
#  2. Subset the data into a new dataframe containing the time period to be plotted
#  3. Generate an additional dataframe column containing the date/time stamp of the observation in an R data/time object
####

# Read the raw data into a data frame
myFrame <- read.table(file="household_power_consumption.txt",header=TRUE,sep=";",na.strings="?", as.is=c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE))

# Subset the data to observations on Feb 1 2007 and Feb 2 2007
myFrame.sub <- myFrame[(myFrame$Date == "1/2/2007" | myFrame$Date == "2/2/2007"),]

# Combine the date and time columns into a new column
myFrame.sub$Date_Time <- paste(myFrame.sub$Date, myFrame.sub$Time, sep=" ")

# Translate the date string into a more friendly date format
myFrame.sub$Date_Time <- gsub('1/2/2007', '2007-02-01', myFrame.sub$Date_Time)
myFrame.sub$Date_Time <- gsub('2/2/2007', '2007-02-02', myFrame.sub$Date_Time)

# Convert the date/time represented as a character format to an R data/time object
myFrame.sub$Date_Time <- strptime(myFrame.sub$Date_Time, "%Y-%m-%d %H:%M:%S")

# Dump the massaged dataframe for use by individual plotting scripts
dump("myFrame.sub")
