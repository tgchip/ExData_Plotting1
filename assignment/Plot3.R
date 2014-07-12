#-Plot 3: Time History of multiple sub_metering measurements

powerData <- read.table(pipe('grep "^[1-2]/2/2007" "../household_power_consumption.txt"'),header=F, sep=';')
dateTime <- strptime( paste(powerData$V1,powerData$V2), format="%d/%m/%Y %H:%M:%S")
plot(dateTime,powerData$V7, type="n", xlab='', ylab='Energy sub metering')
lines(dateTime,powerData$V7, col='black')
lines(dateTime,powerData$V8, col='red')
lines(dateTime,powerData$V9, col='blue')
legend("topright",
       col = c("black", "red", "blue"), 
       lty=c(1,1), # gives the legend appropriate symbols (lines)
       lwd=c(2.5,2.5),
       y.intersp=.3,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "Plot3.png", width = 580, height = 480)
dev.off()