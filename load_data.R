
#load file data
fileName <- "household_power_consumption.txt"

#memory data
data <- read.table(fileName, header=TRUE, sep=";")

#new data set
dataPlot <- subset(data, subset=(data$Date == "1/2/2007" | data$Date == "2/2/2007"))

#change format date
dataPlot$Date <- as.Date(dataPlot$Date, format="%d/%m/%Y")

#variable util plot
Global_active_power <- as.numeric(as.character(dataPlot$Global_active_power))
