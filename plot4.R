
#data1 source in plot1.R
#date_time source in plot2.R

#Create Plot4 and save to PNG (width/height of 480 pixels)
png("plot4.png", width=480, height=480)                                                                 #graphics device turns on
par(mfrow = c(2, 2))                                                                                    #layout drawn by 2 rows and 2 columns 
plot(date_time, data1$Global_active_power, type="l", xlab="", ylab="Global Active Power", cex=0.2)      #add plot Global Active Power
plot(date_time, data1$Voltage, type="l", xlab="date_time", ylab="Voltage")                              #add plot voltage
plot(date_time, data1$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")                     #add plot energy sub-metering No. 1
lines(date_time, data1$Sub_metering_2, type="l", col="red")                                             #add graph energy sub-metering No. 2
lines(date_time, data1$Sub_metering_3, type="l", col="blue")                                            #add graph energy sub-metering No. 3
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2, col=c("black", "red", "blue"), bty="o")                                            #add legend for plot energy sub-metering
plot(date_time, data1$Global_reactive_power, type="l", xlab="date_time", ylab="Global_reactive_power")  #add plot Global Reactive Power
dev.off()                                                                                               #graphics devices shuts down



