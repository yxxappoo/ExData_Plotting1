## Project 1 --- Plot 3
## The code below is to recreat the plot 3


## Read and subsetting the data from 1/2/2007 to 2/2/2007

readdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE)
usedata <- readdata[readdata$Date == "1/2/2007" | readdata$Date == "2/2/2007", ]

## Plot the third plot
## plot: Evergy sub metering over data

png("plot3.png", width=480, height=480)
sub_metering_1 <- as.numeric(usedata$Sub_metering_1)
sub_metering_2 <- as.numeric(usedata$Sub_metering_2)
sub_metering_3 <- as.numeric(usedata$Sub_metering_3)
date_time <- strptime(paste(usedata$Date, usedata$Time), format="%d/%m/%Y %H:%M:%S")
plot(date_time, sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(date_time, sub_metering_2, type = "l", col="red")
lines(date_time, sub_metering_3, type = "l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=1)
dev.off()

