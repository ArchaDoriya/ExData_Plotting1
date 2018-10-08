
#Import the data 
household_power_consumption <- read.csv("D:/Coursera/household_power_consumption.txt" ,header=T, sep=';', na.strings="?", 
                                          nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
household_data <- subset(household_power_consumption, Date %in% c("1/2/2007","2/2/2007"))
household_data$Date <- as.Date(household_data$Date, format="%d/%m/%Y")
png("plot1.png", width=480, height=480)
par(mar = c(4,6,4,6))

## Plot 1
hist(household_data$Global_active_power,freq = TRUE, main = "Global Active Power", 
      xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()

