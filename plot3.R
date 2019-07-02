fn = "~/R/coursera/exdata_data_household_power_consumption/household_power_consumption.txt"

data_full <- read.csv(fn, header=TRUE, sep=";")

data_full$Date <- as.Date(data_full$Date, "%j/%m/%Y")

data <- data_full[data_full$Date >= as.Date("2007-02-01") & data_full$Date <= as.Date("2007-02-02"),]

plot(as.numeric(data$Sub_metering_1),
     xlab = "",
     ylab = "Energy sub metering",
     type = "l",
     xaxt = 'n',
     yaxt = 'n')


legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, cex=0.8)

lines(as.numeric(data$Sub_metering_2),
      col = "red")
lines(as.numeric(data$Sub_metering_3),
      col = "blue")


axis(side=1, at=c(0, 1450, 2900), labels=c("Thu", "Fri", "Sat"))
axis(side=2, at=seq(0,40, 10), labels=seq(0,40, 10))

