files <- list.files("~/datasciencecoursera", full.names = TRUE)
data <- read.csv(files[2], header = TRUE, sep = ";", na.strings = "?")
data <- data[(data$Date == "1/2/2007"| data$Date == "2/2/2007"),]
data$Datetime <- strptime(paste(data$Date, data$Time),format="%d/%m/%Y %H:%M:%S")
png("plot2.png")
with(data, plot(Datetime, Global_active_power, type = "l"))
dev.off()