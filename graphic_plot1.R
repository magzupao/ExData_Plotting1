executePlot1 <- function() {
  
	#load data	
	source("load_data.R")
	
	#graphic
	hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

	#save graphic
	png(filename = "plot1.png", width = 480, height = 480, units = "px")

	#close window graphic
	dev.off()
}
