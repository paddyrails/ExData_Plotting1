powerdata <- read.csv("subset.txt", sep=";", header = TRUE)
datetime <- paste(powerdata$Date, powerdata$Time, sep = " ")
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
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
dev.copy(png, "plot3.png", width=480, height=480)
dev.off()