##############################################################################################
# Description:
# plot2.r plots a histogram of Global Active Power
#
# Script Process:
#  1. Load the massaged data to be plotted
####

# Read the massaged data to be plotted
source("dumpdata.R")

# Configure a png device
png(filename="plot2.png", bg="transparent", width=480, height=480)

# Generate a plot to be driven to the png device
plot(myFrame.sub$Date_Time, myFrame.sub$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")

# Close the png graphics device
dev.off()
