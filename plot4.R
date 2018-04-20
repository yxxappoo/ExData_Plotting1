## Project 1 --- Plot 4
## The code below is to recreat the plot 4


## Read and subsetting the data from 1/2/2007 to 2/2/2007
readdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE)
usedata <- readdata[readdata$Date == "1/2/2007" | readdata$Date == "2/2/2007", ]

## preparing all the data for plotting
Global_Active_Power <- as.numeric(usedata$Global_active_power)
Voltage <- as.numeric(usedata$Voltage)
sub_metering_1 <- as.numeric(usedata$Sub_metering_1)
sub_metering_2 <- as.numeric(usedata$Sub_metering_2)
sub_metering_3 <- as.numeric(usedata$Sub_metering_3)
Global_Reactive_Power <- as.numeric(usedata$Global_reactive_power)
date_time <- strptime(paste(usedata$Date, usedata$Time), format="%d/%m/%Y %H:%M:%S")

## Plot the fourth plot
## plot: Evergy sub metering over data

# set up 2:2 pattern for plotting
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

# plotting all the data
plot(date_time, Global_Active_Power, type = "l", xlab = "", ylab = "Global Active Power")

plot(date_time, Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(date_time, sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(date_time, sub_metering_2, type = "l", col="red")
lines(date_time, sub_metering_3, type = "l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1)

plot(date_time, Global_Reactive_Power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()

