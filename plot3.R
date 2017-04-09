executePlot3 <- function() {
  
  #load data	
  source("load_data.R")
  
  #merge date time	
  newDateTime <- paste(dataPlot$Date, dataPlot$Time)
  
  #format Date
  dataPlot$DateTime <- strptime(newDateTime, "%Y-%m-%d %H:%M:%S")
  
  #variable plot
  DateTime <- dataPlot$DateTime

  #save graphic
  png(filename = "plot3.png", width = 480, height = 480, units = "px")
  
  #graphic	
  plot(DateTime, dataPlot$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
  lines(DateTime, dataPlot$Sub_metering_2, col = "red")
  lines(DateTime, dataPlot$Sub_metering_3, col = "blue")
  legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
  
  #close window graphic
  dev.off()
}
