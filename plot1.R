# Load Main Library
source("cp1_lib.R")

# Histogram of Global Active Power
hist(
    df$Global_active_power, col = "red",
    xlab = "Global Active Power (kilowatts)", main = "Global Active Power"
)

# Save To File
dev.copy(png, width=480, height=480, "plot1.png")
dev.off()
