# Read Data Into a Data Frame
require(sqldf)
df <- read.csv.sql(
    "household_power_consumption.txt", sep = ";",
    "SELECT * from file where (Date = '1/2/2007' or Date ='2/2/2007')"
)
closeAllConnections()

# Turn Text-Based Date/Time Info Into a Native Date/Time Type
df <- transform(
    df,
    dt = strptime(
        x = paste(Date,Time,sep=" "),
        format="%d/%m/%Y %H:%M:%S"
    )
)

# Setup Plot Parameters: One Graph Per Device, Font Size=16
par(mfrow = c(1,1), ps = 10, mgp = c(2, 1, 0), mai = c(0.7, 0.7, 0.7, 0.7))
