# Load Main Library
source("cp1_lib.R")

# Set Plots To Render 4-up
# Use smaller font so text looks better
par(mfrow = c(2, 2), mai = c(.5, .5, .5, .5))

# Plot Global Active Power Over Time
plot(df$dt, df$Global_active_power,type="l",ylab="Global Active Power",xlab="")
# Plot Voltage Over Time
plot(df$dt, df$Voltage, type="l", ylab="Voltage", xlab="datetime")
# Plot Energy Sub Metering
plot(df$dt, df$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n")
points(df$dt, df$Sub_metering_1, col="black", type="l")
points(df$dt, df$Sub_metering_2, col="red",   type="l")
points(df$dt, df$Sub_metering_3, col="blue",  type="l")
legend(
    "topright",
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
    lty = c(1, 1, 1),
    col = c("black", "red", "blue"),
    bty = "n",
    inset = 0.05,
)
# Plot Global Reactive Power Over Time
plot(
    df$dt, df$Global_reactive_power, type = "l",
    ylab="Global_reactive_power", xlab="datetime"
)

# Save To File
dev.copy(png, width=480, height=480, "plot4.png")
dev.off()
