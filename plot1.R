## Project 1 --- Plot 1
## The code below is to recreat the plot 1


## Read and subsetting the data from 1/2/2007 to 2/2/2007

readdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors=FALSE)
usedata <- readdata[readdata$Date == "1/2/2007" | readdata$Date == "2/2/2007", ]

## Plot the first plot
## Histograhp, plot: Global Active Power (kilowatts)

png("plot1.png", width=480, height=480)
Global_Active_Power <- as.numeric(usedata$Global_active_power)
hist(Global_Active_Power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()

