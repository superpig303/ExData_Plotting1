library(sqldf);
mydata <- read.csv.sql("household_power_consumption.txt",header=T,sep=";",sql='select*from file where Date=="1/2/2007" or Date=="2/2/2007"');
x <- paste(mydata$Date, mydata$Time);
xv <- as.numeric(strptime(x,"%d/%m/%Y %H:%M:%S"));
yv <- mydata$Global_active_power;
plot(xv,yv,type="n",xaxt="n",xlab="",ylab="Global Active Power(kilowatts)");
lines(xv,yv);
axis(1,at=1170259200,labels="Thu");
axis(1,at=1170345540,labels="Fri");
axis(1,at=1170431940,labels="Sat")