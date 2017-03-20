# Getting the Data
getData <- "C:/Users/NWC food San Antonio/Documents/Data Science/Data Scientist Tools/Course 4 Exploratory Data Analysis/week1/project/household_power_consumption.txt"
readData <- read.table(getData, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
colnames(readData)

# Setting subsets
subsetData <- readData[readData$Date %in% c('1/2/2007','2/2/2007'),]

# fixing the plots
dateTime <- strptime(paste(subsetData$Date, subsetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalAcPo <- as.numeric(subsetData$Global_active_power)
plot(dateTime, globalAcPo, type="l", xlab="", ylab="Global Active Power (kilowatts)")

# converting into png file
dev.copy(png, file="plot2.png", width=480, height=480) # copy my plot to a PNG file in working directory
dev.off() # close the PNG file, don't forget 
