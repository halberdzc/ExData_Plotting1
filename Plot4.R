png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
# Top-left
plot(data.final$DateTime, data.final$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
# Top-right
plot(data.final$DateTime, data.final$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
# Bottom-left
plot(data.final$DateTime, data.final$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(data.final$DateTime, data.final$Sub_metering_2, col = "red")
lines(data.final$DateTime, data.final$Sub_metering_3, col = "blue")
legend("topright", bty = "n", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
# Bottom-right
plot(data.final$DateTime, data.final$Global_reactive_power, type = "l",col = "black", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()
