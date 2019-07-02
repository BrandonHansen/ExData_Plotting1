fn = "~/R/coursera/exdata_data_household_power_consumption/household_power_consumption.txt"

data_full <- read.csv(fn, header=TRUE, sep=";")

data_full$Date <- as.Date(data_full$Date, "%j/%m/%Y")

data <- data_full[data_full$Date >= as.Date("2007-02-01") & data_full$Date <= as.Date("2007-02-02"),]

plot(as.numeric(data$Global_active_power),
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l",
     xaxt='n',
     yaxt='n')

axis(side=1, at=c(0, 1450, 2900), labels=c("Thu", "Fri", "Sat"))
axis(side=2, at=seq(0,3000, 1000), labels=seq(0,6, 2))
