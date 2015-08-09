##############################################################################################
# Description:
# plot1.R plots a histogram of Global Active Power
#
# Script Process:
#  1. Load the massaged data from 'dumpdata.R' (generated using plot0_reader.R) to be plotted
#  2. Configure a png device
#  3. Generate the plot and close the graphics device
####

# Read the massaged data to be plotted
source("dumpdata.R")

# Configure a png device
png(filename="plot1.png", bg="transparent", width=480, height=480)

# Create a histogram object to be plotted to a png file
hist(myFrame.sub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

# Close the png graphics device
dev.off()
