png(filename = "plot2.png", width = 480, height = 480)
plot(data.final$DateTime, data.final$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
