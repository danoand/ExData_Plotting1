##############################################################################################
# Description:
# plot4.R plots submetering data over time
#
# Script Process:
#  1. Load the massaged data from 'dumpdata.R' (generated using plot0_reader.R) to be plotted
#  2. Configure the png graphics device and a multi-plot rendering
#  3. Generate the plots to be included in the rendering
#  4. Close the graphics device
####

# Read the transformed massaged data (produced by `plot0_reader.R`) to be plotted
source("dumpdata.R")

# Configure a png device
png(filename="plot4.png", bg="transparent", width=480, height=480)

# Configure the layout of the multi-plot rendering
par(mfrow = c(2, 2))

# Generate plot #1 - global minute-averaged active power over time
plot(myFrame.sub$Date_Time, myFrame.sub$Global_active_power, ylab="Global Active Power", xlab="", type="l")

# Generate plot #2 - global minute-averaged active power over time
plot(myFrame.sub$Date_Time, myFrame.sub$Voltage, ylab="Voltage", xlab="datetime", type="l")

# Generate plot #3 - sub-metering data over time
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
legend("topright", lty = 1, col = c("black", "blue", "red"), bty="n", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Generate plot #4 - global minute-averaged reactive power over time
plot(myFrame.sub$Date_Time, myFrame.sub$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

# Close the png graphics device
dev.off()
