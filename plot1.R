# Read household_power_consumption.csv and filter between 2007-02-01 and 2007-02-02  
source('read_filter_hpc.R')
df <- read_filter_hpc()

# Create PNG device, render plot, close device and write to file
png("plot1.png", height=480, width=480)
hist(df$Global_active_power, main="Global Active Power", ylab="Frequency", xlab="Global Active Power (kilowatts)", col="red")
dev.off()