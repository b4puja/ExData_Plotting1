householdData <- "C:/Users/pujas/Desktop/Data Science/Exploratory Data Any/week1/household_power_consumption.txt"
data <- read.table(householdData, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(datetime, globalActivePower)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
png("plot2.png", width=480, height=480)
dev.off()
