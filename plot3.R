# Read household_power_consumption.csv and filter between 2007-02-01 and 2007-02-02  
source('read_filter_hpc.R')
df <- read_filter_hpc()

# Create PNG device, render plot, add two additional lines and legend, close device and write to file
png("plot3.png", height=480, width=480)
plot( df$Time, df$Sub_metering_1, col="black", ylab="Energy sub metering", xlab="", type="l")
lines(df$Time, df$Sub_metering_2, col="red")
lines(df$Time, df$Sub_metering_3, col="blue")
legend("topright", names(df)[7:9], col=c("black","red","blue"), lty=1)
dev.off()