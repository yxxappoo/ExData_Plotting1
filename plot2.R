## Project 1 --- Plot 2
## The code below is to recreat the plot 2


## Read and subsetting the data from 1/2/2007 to 2/2/2007

readdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE)
usedata <- readdata[readdata$Date == "1/2/2007" | readdata$Date == "2/2/2007", ]

## Plot the second plot
## plot: Global Active Power (kilowatts) over data

png("plot2.png", width=480, height=480)
Global_Active_Power <- as.numeric(usedata$Global_active_power)
date_time <- strptime(paste(usedata$Date, usedata$Time), format="%d/%m/%Y %H:%M:%S")
plot(date_time, Global_Active_Power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

