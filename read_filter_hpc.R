read_filter_hpc <- function(){
  dt <- read.table('household_power_consumption.txt', header=TRUE, sep=";", na="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
  
  dt$Date <- as.Date(dt$Date, "%d/%m/%Y")
  dt$Time <- strptime(paste(dt$Date, dt$Time), "%Y-%m-%d %H:%M:%S")
  
  filter <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  df <- subset(dt, Date %in% filter)
  
  return (df)
}