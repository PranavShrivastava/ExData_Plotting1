hpc<- read.table("household_power_consumption.txt", na.strings="?", 
        header = TRUE, sep = ";", colClasses = c("Date", "factor", 
            rep("numeric", 7))) ## Reads and assign the data in hpc##
(str(hpc))
hpc$Date <- as.Date(hpc$Date, format = "%d/%m/%Y") ##Change the Date Format##
data2 <- subset(hpc, Date>="01/02/2007" & Date<="02/02/2007") ##subset according to date##
hist(data2$Global_active_power, main = "Global Active Power", ylab = "Frequency", 
     xlab = "Global Active Power (kilowatts)", col = "red") ##plot Histogram##
