##############################################################################################
# Description:
# plot1.r plots a histogram of Global Active Power
#
####

# Read the massaged data to be plotted
source("dumpdata.R")

# Configure a png device
png(filename="plot1.png", width=480, height=480)

# Create a histogram object to be plotted to a png file
hist_obj <- hist(myFrame.sub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

# Plot the histogram object and save to a png file
plot(hist_obj)

# Close the png graphics device
dev.off()
