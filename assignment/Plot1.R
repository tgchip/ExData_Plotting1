#-Plot 1: Histogram of Global Active Power

powerData <- read.table(pipe('grep "^[1-2]/2/2007" "../household_power_consumption.txt"'),header=F, sep=';')
hist(powerData$V3,main='Global Active Power', xlab='Global Active Power (killowats)', col='red')
dev.copy(png, file = "Plot1.png", width = 580, height = 480)
dev.off()



