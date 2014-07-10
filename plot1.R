####Loading data
file <- "exdata-data-household_power_consumption/household_power_consumption.txt"
Daten <- read.table(file, header = T, sep = ";",colClasses = c(rep("character", 2), rep("numeric", 7)), na.strings = "?")
DatenPlot <- subset(Daten, Daten$Date == "1/2/2007" | Daten$Date == "2/2/2007")
rm(list=setdiff(ls(),c("DatenPlot")))
Sys.setlocale(category = "LC_TIME", locale = "C")


### Plot 1
png(filename="plot1.png", width = 480, height = 480, units = "px")
<<<<<<< HEAD
hist(DatenPlot$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
=======
hist(as.numeric(Daten$Global_active_power), xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
>>>>>>> e406f7d0d09473744fc904cb2969f6f2171afbee
dev.off()
