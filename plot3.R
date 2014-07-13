library(sqldf);
mydata <- read.csv.sql("household_power_consumption.txt",header=T,sep=";",sql='select*from file where Date=="1/2/2007" or Date=="2/2/2007"');
x <- paste(mydata$Date, mydata$Time);
xv <- as.numeric(strptime(x,"%d/%m/%Y %H:%M:%S"));
yv1 <- mydata$Sub_metering_1;
yv2 <- mydata$Sub_metering_2;
yv3 <- mydata$Sub_metering_3;
plot(xv,yv1,type="n",xaxt="n",xlab="",ylab="Energy sub metering");
lines(xv,yv1,col="black");
axis(1,at=1170259200,labels="Thu");
axis(1,at=1170345540,labels="Fri");
axis(1,at=1170431940,labels="Sat");
lines(xv,yv2,col="red");
lines(xv,yv3,col="blue");
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1           ","Sub_metering_2         ","Sub_metering_3         "), lwd=1)
par(mar=c(4,4,2,2));