####Loading data2

Daten <- read.csv("household_power_consumption.txt", header = T, sep = ";")
DatenPlot <- subset(Daten, Daten$Date == "1/2/2007" | Daten$Date == "2/2/2007")
Sys.setlocale(category = "LC_TIME", locale = "C")
Sys.setlocale(category = "LC_ALL", locale = "")

### Plot 2
png(filename="plot2.png", width = 480, height = 480 units = "px")
DatenPlot$DateTime <- strptime(paste(DatenPlot$Date, DatenPlot$Time), "%d/%m/%Y %H:%M:%S")

plot(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Global_active_power), dec = ".")), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
