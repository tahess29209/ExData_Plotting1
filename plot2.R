plot2 <- function(df){
    
    png(filename = "plot2.png")
    plot(df$time, df$global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
    dev.off()
    
}