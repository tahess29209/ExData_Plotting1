plot1 <- function(df){
    
    png(filename = "plot1.png")
    hist(df$global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
    dev.off()
    
}

