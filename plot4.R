# Read household_power_consumption.csv and filter between 2007-02-01 and 2007-02-02  
source('read_filter_hpc.R')
df <- read_filter_hpc()

# Create PNG device
png("plot4.png", height=480, width=480)

# Dimesion 2x2 canvas
par(mfrow=c(2,2))

# Plot 1st
plot(df$Time, df$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")

# Plot 2nd
plot(df$Time, df$Voltage,type="l",xlab="datetime",ylab="Voltage")

# Plot 3rd
plot( df$Time, df$Sub_metering_1, col="black", ylab="Energy sub metering", xlab="", type="l")
lines(df$Time, df$Sub_metering_2, col="red")
lines(df$Time, df$Sub_metering_3, col="blue")
legend("topright", names(df)[7:9], col=c("black","red","blue"), lty=1)

# Plot 4th
plot(df$Time, df$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")

# Close device, write to file
dev.off()