files <- list.files("~/datasciencecoursera", full.names = TRUE)
data <- read.csv(files[2], header = TRUE, sep = ";", na.strings = "?")
data <- data[ (data$Date=="1/2/2007" | data$Date == "2/2/2007"),]
png("plot1.png")
hist(data$Global_active_power, main = "Global Active Power",
     col = "red", xlab = "Global Active Power(kilowatts)")
dev.off()