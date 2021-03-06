powerdata <- read.table("subset.txt", sep=";", header = TRUE)
hist(powerdata$Global_active_power, 
     col="red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
