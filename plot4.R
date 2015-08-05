plot4 <- function(df){
    
    png(filename = "plot4.png")
    par(mfrow=c(2,2))
    plot(df$time, df$global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
    plot(df$time, df$voltage, type = "l", ylab = "Voltage", xlab = "datetime")
    plot(df$time, df$sub_metering_1, type = "n", ylab = "Energy Sub Metering", xlab = "")
    lines(df$tim, df$sub_metering_1, type = "l", col = "black")
    lines(df$tim, df$sub_metering_2, type = "l", col = "red")
    lines(df$tim, df$sub_metering_3, type = "l", col = "blue")
    legend("topright", legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty = c(1, 1,1), col = c("black", "red", "blue"), text.col = c("black", "red", "blue"))
    plot(df$time, df$global_reactive_power, type = "l", ylab = "Global Reactive Power", xlab = "datetime")
    dev.off()
    
}