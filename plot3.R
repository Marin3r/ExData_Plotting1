####Loading data3


Daten <- read.table(file, header = T, sep = ";",colClasses = c(rep("character", 2), rep("numeric", 7)), na.strings = "?")
DatenPlot <- subset(Daten, Daten$Date == "1/2/2007" | Daten$Date == "2/2/2007")
rm(list=setdiff(ls(),c("DatenPlot")))
Sys.setlocale(category = "LC_TIME", locale = "C")
### Plot 3

png(filename="figure/plot3.png", width = 480, height = 480, units = "px")
plot(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Sub_metering_1), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
points(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Sub_metering_2), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Sub_metering_3), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
