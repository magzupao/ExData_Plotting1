executePlot2 <- function() {
  
	#load data	
	source("load_data.R")
	
	#merge date time	
	newDateTime <- paste(dataPlot$Date, dataPlot$Time)

	#format Date
	dataPlot$DateTime <- strptime(newDateTime, "%Y-%m-%d %H:%M:%S")

	#variable plot
	DateTime <- dataPlot$DateTime

	#graphic
	plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

	#save graphic
	png(filename = "plot2.png", width = 480, height = 480, units = "px")

	#close window graphic
	dev.off()
}
