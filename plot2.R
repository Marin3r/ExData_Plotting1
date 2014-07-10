####Loading data2

file <- "exdata-data-household_power_consumption/household_power_consumption.txt"
Daten <- read.table(file, header = T, sep = ";",colClasses = c(rep("character", 2), rep("numeric", 7)), na.strings = "?")
DatenPlot <- subset(Daten, Daten$Date == "1/2/2007" | Daten$Date == "2/2/2007")
rm(list=setdiff(ls(),c("DatenPlot")))
Sys.setlocale(category = "LC_TIME", locale = "C")

### Plot 2
png(filename="figure/plot2.png", width = 480, height = 480, units = "px")
DatenPlot$DateTime <- strptime(paste(DatenPlot$Date, DatenPlot$Time), "%d/%m/%Y %H:%M:%S")

plot(DatenPlot$DateTime,as.numeric(type.convert(as.character(DatenPlot$Global_active_power), dec = ".")), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()
