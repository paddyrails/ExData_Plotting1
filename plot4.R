powerdata <- read.csv("subset.txt", sep=";", header = TRUE)
datetime <- paste(powerdata$Date, powerdata$Time, sep = " ")
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
par(mfcol=c(2,2))

#Plot1
plot(datetime, powerdata$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)"
)

#Plot2
plot(datetime, powerdata$Global_active_power, 
     type = "n",
     xlab = "",
     ylab = "Energy sub metering",
     ylim = c(0,40))
lines(datetime, powerdata$Sub_metering_1)
lines(datetime, powerdata$Sub_metering_2, col="red")
lines(datetime, powerdata$Sub_metering_3, col="blue")
legend("topright",
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       col=c("black", "blue","red")) 
#Plot3
plot(datetime, powerdata$Voltage, 
     type = "l",
     ylab = "Voltage"
)
#Plot4
plot(datetime, powerdata$Global_reactive_power, 
     type = "l",
     ylab = "Global_reactive_power"
)

dev.copy(png, "plot4.png", width=480, height=480)
dev.off()