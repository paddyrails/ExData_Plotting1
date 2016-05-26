powerdata <- read.csv("subset.txt", sep=";", header = TRUE)
datetime <- paste(powerdata$Date, powerdata$Time, sep = " ")
datetime <- strptime(datetime, "%d/%m/%Y %H:%M:%S")
plot(datetime, powerdata$Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)"
     )
dev.copy(png, "plot2.png", width=480, height=480)
dev.off()