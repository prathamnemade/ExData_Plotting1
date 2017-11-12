dataFile <- "./data/household_power_consumption.txt"  #loading th efile
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")  #reading taable
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] #date
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  #seting the time 
globalActivePower <- as.numeric(subSetData$Global_active_power)  #extract
png("plot2.png", width=480, height=480) #saving png image
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)") #polting
dev.off()