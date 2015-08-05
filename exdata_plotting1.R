
#This file opens up the provided data set as a data frame. The data set file must be named appropriately and be located in the 
#working direcotry. Then the script calls four functions that each create one plot as a PNG file.  


#set data file name and column names
filename <- "household_power_consumption.txt"
colnames <- c("date","time","global_active_power","global_reactive_power","voltage","global_intensity","sub_metering_1","sub_metering_2","sub_metering_3")

#pull in data set for 2007-02-01 and 2007-02-02
df <- read.csv(filename, header = TRUE, col.names = colnames, skip = 66636, nrows = 2880, sep = ";")

#formate the date and time columns at data and time data types
df[[2]] <- strptime(paste(df[[1]],df[[2]], sep = " "),format = "%d/%m/%Y %H:%M:%S")
df[[1]] <- as.Date(df[[1]], format = "%d/%m/%Y")

# Call appropriate functions to generate plots as .png files in the current working directory. 
function_names <- c("plot1.R", "plot2.R", "plot3.R", "plot4.R")
sapply(function_names, source)

plot1(df)
plot2(df)
plot3(df)
plot4(df)