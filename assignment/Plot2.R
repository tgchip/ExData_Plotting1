#-Plot 2: Time History of Global Active Power

powerData <- read.table(pipe('grep "^[1-2]/2/2007" "../household_power_consumption.txt"'),header=F, sep=';')
dateTime <- strptime( paste(powerData$V1,powerData$V2), format="%d/%m/%Y %H:%M:%S")
plot(dateTime,powerData$V3, type="n", xlab='', ylab='Global Active Power (kilowatts)')
lines(dateTime,powerData$V3)
dev.copy(png, file = "Plot2.png", width = 580, height = 480)
dev.off()