
#data1 source in plot1.R
#date_time source in plot2.R

#Create Plot3 and save to PNG (width/height of 480 pixels)
png("plot3.png", width=480, height=480)                                              #graphics devices turn on
plot(date_time, data1$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="") #add plot energy sub-metering No. 1
lines(date_time, data1$Sub_metering_2, type="l", col="red")                          #add graph energy sub-metering No. 2
lines(date_time, data1$Sub_metering_3, type="l", col="blue")                         #add graph energy sub-metering No. 3
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=2, col=c("black", "red", "blue"))                                  #add legend
dev.off()                                                                            #graphics devices shuts down
