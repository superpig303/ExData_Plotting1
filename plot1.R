library(sqldf);
mydata <- read.csv.sql("household_power_consumption.txt",header=T,sep=";",sql='select*from file where Date=="1/2/2007" or Date=="2/2/2007"');
par(mar=c(4,4,6,2));
hist(mydata$Global_active_power,xlab="Global Active Power(kilowatts)", main="Global Active Power", col="red",cex.axis=0.9)