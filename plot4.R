####Loading data4


Daten <- read.csv("household_power_consumption.txt", header = T, sep = ";")
DatenPlot <- subset(Daten, Daten$Date == "1/2/2007" | Daten$Date == "2/2/2007")
Sys.setlocale(category = "LC_TIME", locale = "C")
Sys.setlocale(category = "LC_ALL", locale = "")

### Plot 4

png(filename="plot4.png", width = 480, height = 480 units = "px")
par(mfrow = c(2, 2))
plot(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Global_active_power), dec = ".")), type = "l", xlab = "", ylab = "Global Active Power")
plot(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Voltage), dec = ".")), type = "l", xlab = "datetime", ylab = "Voltage")
plot(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Sub_metering_1), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
points(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Sub_metering_2), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Sub_metering_3), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Global_reactive_power), dec = ".")), type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()

