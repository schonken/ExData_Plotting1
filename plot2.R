# Read household_power_consumption.csv and filter between 2007-02-01 and 2007-02-02  
source('read_filter_hpc.R')
df <- read_filter_hpc()

# Create PNG device, render plot, close device and write to file
png("plot2.png", height=480, width=480)
plot(df$Time, df$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", type="l")
dev.off()