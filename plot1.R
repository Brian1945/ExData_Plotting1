#Author: Brian McElroy
#file plot1.R
#This is a waste of time. If I wasn't doing this through a work sponsored program
#I would have quit already. I"m not learning anything I couldn't have gotten
#from a book in less time with less frustration.
#And half of this class seems to be fixated on using Github anyway, which is 
#(somehow) a bigger waste of time. 
#############################################################################

#load the data into the program
power <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(power) <- c("Date","Time","Global_active_power",
                  "Global_reactive_power","Voltage","Global_intensity",
                  "Sub_metering_1","Sub_metering_2","Sub_metering_3")


#subset the dataset
subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")


#print the visual
hist(as.numeric(as.character(subpower$Global_active_power)),
     col="red",main="Global Active Power",
     xlab="Global Active Power(kilowatts)")
title(main="Global Active Power")