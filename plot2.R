# Load Main Library
source("cp1_lib.R")

# Global Active Power over Time
plot(
    df$dt, df$Global_active_power,
    type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""
)

# Save To File
dev.copy(png, width=480, height=480, "plot2.png")
dev.off()
