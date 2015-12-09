data <- read.table('household_power_consumption.txt', header = TRUE, sep = ';', na.strings = '?')
subsetData <- data[data$Date %in% c('1/2/2007', '2/2/2007'), ]

gpa <- as.numeric(subsetData$Global_active_power)
png('plot1.png', width = 480, height = 480)
hist(gpa, col = 'red', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', main = 'Global Active Power')
dev.off()