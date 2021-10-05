

#Data File Url
FileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

#Download and extract zip file
download.file(FileUrl, destfile = "file.zip", method = "curl", mode = "wb")
unzip("file.zip")

#Set data file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", 
                   colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

#Set sub data from the dates 2007-02-01 and 2007-02-02
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#Create Plot1 and save to PNG (width/height of 480 pixels)
png("plot1.png", width=480, height=480)
hist(data1$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() #graphics devices shuts down

