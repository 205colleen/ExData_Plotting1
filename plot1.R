getwd()
getwd()
getwd()
library(swirl)
setwd
?setwd
getwd()
?setwd
setwd("C:/Users/mllrg/desktop/coursera")
getwd()
#Plot1.R
#by Colleen Miller
# Step 1: Reading Data
data <- read.table("household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
data <- read.table("household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
#Step 2: Convert Date Column to Date Object
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
#Step 3: Extract data for the following days 2007-02-01 and 2007-02-02.
selected_dataset <- data[which(data$Date %in% as.Date(c("2007-02-01", "2007-02-02"))),]
## Step4: Change column "Global Active Power" to numeric
selected_dataset$Global_active_power <- as.numeric(selected_dataset$Global_active_power)
## Step5: Plot histogram - frequencies of Global Active Power
png(filename="plot1.png", width=480, height = 480 )
# change parameter for axis labels to horizontal to the axis
par(las=1)
#Plotting
hist(selected_dataset$Global_active_power, xlab = "Global Active Power (kilowatts)",
ylab = "Frequency", main = "Global Active Power", col = "red")
dev.off()
hist(selected_dataset$Global_active_power, xlab = "Global Active Power (kilowatts)"
ylab = "Frequency", main = "Global Active Power", col = "red")
hist(selected_dataset$Global_active_power, xlab = "Global Active Power (kilowatts)",
ylab = "Frequency", main = "Global Active Power", col = "red")
dev.off()
> hist(selected_dataset$Global_active_power, xlab = "Global Active Power (kilowatts)",
+      ylab = "Frequency", main = "Global Active Power", col = "red")
hist(selected_dataset$Global_active_power, xlab = "Global Active Power (kilowatts)",
ylab = "Frequency", main = "Global Active Power", col = "red")
library(lubridate)
?library
#Plot2.R
#By COlleen Miller
#step1: Reading Data
data <- read.table("household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
#Step2: Create a full day/time column and convert it to POSIXct object
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$full_date <- paste0(data$Date, " " , data$Time)
data$full_date <- as_datetime(data$full_date)
package(lubridate)
