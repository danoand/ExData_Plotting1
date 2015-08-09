##############################################################################################
# Description:
# plot3.R plots submetering data over time
#
# Script Process:
#  1. Load the massaged data from 'dumpdata.R' (generated using plot0_reader.R) to be plotted
#  2. Configure the png graphics device
#  3. Render an initial plot of Sub_metering_1 data by time
#  4. Add Sub_metering_2 and Sub_metering_3 data
#  5. Annotate the plot with a legend
####

# Read the transformed massaged data (produced by `plot0_reader.R`) to be plotted
source("dumpdata.R")

# Configure a png device
png(filename="plot3.png", bg="transparent", width=480, height=480)

# Render an initial graphic plotting Sub_metering_1 vs. the Date/Time
plot(
  myFrame.sub$Date_Time,
  myFrame.sub$Sub_metering_1,
  ylab="Energy sub metering",
  xlab="",
  type = "l"
  )

# Add the Sub_metering_2 points in red color
points(myFrame.sub$Date_Time, myFrame.sub$Sub_metering_2, col = "red", type="l")
# Add the Sub_metering_3 points in blue color
points(myFrame.sub$Date_Time, myFrame.sub$Sub_metering_3, col = "blue", type="l")

# Add a legend describing the different sets of submetering points
legend("topright", lty = 1, col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Close the png graphics device
dev.off()
