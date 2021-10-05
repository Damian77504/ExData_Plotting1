
#data1 source in plot1.R

#Convert the Date and Time variables to date_time column with class format
date_time <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Create Plot1 and save to PNG (width/height of 480 pixels)
png("plot2.png", width=480, height=480)
plot(date_time, data1$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()  #graphics devices shuts down



