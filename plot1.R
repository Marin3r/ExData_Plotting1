####Loading data

Daten <- read.csv("household_power_consumption.txt", header = T, sep = ";")
DatenPlot <- subset(Daten, Daten$Date == "1/2/2007" | Daten$Date == "2/2/2007")
Sys.setlocale(category = "LC_TIME", locale = "C")
Sys.setlocale(category = "LC_ALL", locale = "")

### Plot 1
png(filename="plot1.png", width = 480, height = 480, units = "px")
hist(as.numeric(Daten$Global_active_power), xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
dev.off()
