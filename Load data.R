# Read in the data file.

file <- "./household_power_consumption.txt"
data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors=FALSE, na = "?")
data.final <- data[(data$Date == "1/2/2007" or data$Date == "2/2/2007"), ]
data.final$DateTime <- strptime(paste(data.final$Date, data.final$Time), "%d/%m/%Y %H:%M:%S")
