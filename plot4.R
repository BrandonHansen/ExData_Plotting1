fn = "~/R/coursera/exdata_data_household_power_consumption/household_power_consumption.txt"

data_full <- read.csv(fn, header=TRUE, sep=";")

data_full$Date <- as.Date(data_full$Date, "%j/%m/%Y")

data <- data_full[data_full$Date >= as.Date("2007-02-01") & data_full$Date <= as.Date("2007-02-02"),]

par(mfrow=c(2,2))

plot(as.numeric(data$Global_active_power),
     xlab = "",
     ylab = "Global Active Power",
     type = "l",
     xaxt='n',
     yaxt='n')

axis(side=1, at=c(0, 1450, 2900), labels=c("Thu", "Fri", "Sat"))
axis(side=2, at=seq(0,3000, 1000), labels=seq(0,6, 2))

plot(as.numeric(data$Voltage),
     xlab = "datetime",
     ylab = "Voltage",
     type = "l",
     xaxt = 'n',
     yaxt = 'n')

axis(side=1, at=c(0, 1450, 2900), labels=c("Thu", "Fri", "Sat"))
axis(side=2, at=seq(800,2000, 200), labels=c(234, "", 238, "", 242, "", 246))

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
axis(side=2, at=c(0, 10, 20, 30), labels=c("0", 10, 20, 30))

plot(as.numeric(data$Global_reactive_power),
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "l",
     xaxt = 'n',
     yaxt = 'n')

axis(side=1, at=c(0, 1450, 2900), labels=c("Thu", "Fri", "Sat"))
axis(side=2, at=c(0, 40, 80, 120, 160, 200), labels=c("0.0", "0.1", "0.2", "0.3", "0.4", "0.5"))


