# Load Main Library
source("cp1_lib.R")

# Sub Metering 
plot(
    df$dt, df$Sub_metering_1, ylab="Energy sub metering", xlab="", type="n"
)
points(df$dt, df$Sub_metering_1, col="black", type="l")
points(df$dt, df$Sub_metering_2, col="red",   type="l")
points(df$dt, df$Sub_metering_3, col="blue",  type="l")

legend(
    "topright",
    legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
    lty = c(1,1,1),
    col = c("black","red","blue"),
    inset = .05,
)

# Save To File
dev.copy(png, width=480, height=480, "plot3.png")
dev.off()
