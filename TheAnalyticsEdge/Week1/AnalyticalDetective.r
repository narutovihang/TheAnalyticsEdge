mvt<-read.csv("mvtWeek1.csv")
summary(mvt)
str(mvt)
table(mvt$Arrest)
table(mvt$LocationDescription=="ALLEY")

mvt$Date
dateconvert=as.Date(strptime(mvt$Date,"%m/%d/%y %H:%M"))
summary(dateconvert)
mvt$month=months(dateconvert)
mvt$weekdays=weekdays(dateconvert)
mvt$Date=dateconvert
table(mvt$month)
min(table(mvt$month))

table(mvt$weekdays)
max(table(mvt$weekdays))

table(mvt$month,mvt$Arrest==TRUE)

hist(mvt$Date,breaks=100)

boxplot(mvt$Date ~ mvt$Arrest,mvt)

table(mvt$Arrest)/nrow(mvt)

table(mvt$Arrest,mvt$Year==2001)/NROW(subset(mvt,mvt$Year==2001))

table(mvt$Arrest,mvt$Year==2007)/NROW(subset(mvt,mvt$Year==2007))

table(mvt$Arrest,mvt$Year==2012)/NROW(subset(mvt,mvt$Year==2012))

top5<-subset(mvt,mvt$LocationDescription=="STREET" | mvt$LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)"| mvt$LocationDescription=="ALLEY" | mvt$LocationDescription == "GAS STATION" | mvt$LocationDescription=="DRIVEWAY - RESIDENTIAL")


top5$LocationDescription=factor(top5$LocationDescription)
table(top5$LocationDescription)


table(top5$Arrest,top5$LocationDescription)/NROW(subset(top5,top5$LocationDescription=="ALLEY"))
table(top5$Arrest,top5$LocationDescription)/NROW(subset(top5,top5$LocationDescription=="DRIVEWAY - RESIDENTIAL"))
table(top5$Arrest,top5$LocationDescription)/NROW(subset(top5,top5$LocationDescription=="GAS STATION"))
table(top5$Arrest,top5$LocationDescription)/NROW(subset(top5,top5$LocationDescription=="PARKING LOT/GARAGE(NON.RESID.)"))
table(top5$Arrest,top5$LocationDescription)/NROW(subset(top5,top5$LocationDescription=="STREET"))


table(mvt$weekdays,mvt$LocationDescription=="GAS STATION")
table(mvt$weekdays,mvt$LocationDescription=="DRIVEWAY - RESIDENTIAL")







