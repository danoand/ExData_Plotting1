##############################################################################################
# Description:
# plot2.R plots household global minute-averaged active power over time
#
# Script Process:
#  1. Load the massaged data from 'dumpdata.R' (generated using plot0_reader.R) to be plotted
#  2. Configure the png graphics device
#  3. Render plot of household global minute-averaged active power by time
####

# Read the massaged data to be plotted
source("dumpdata.R")

# Configure a png device
png(filename="plot2.png", bg="transparent", width=480, height=480)

# Generate a plot to be driven to the png device
plot(myFrame.sub$Date_Time, myFrame.sub$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")

# Close the png graphics device
dev.off()
