# Create ts and xts time series objects from csv files
require("xts")

# load data from csv ------------------------------------------------------
loadData <- function(file, format="%Y-%m-%d %H:%M:%S", sep=",") {
    
    data <- read.csv(file, sep = sep)
    data$Time <- as.POSIXct(strptime(data$Time, format=format))
    data <- as.xts(data[,2:6], order.by=data$Time)
    data[data$Volume != 0,]
    
}