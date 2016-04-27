
##############################################################################################
#Stockanalysis
IBM$Date=as.Date(IBM$Date,"%m/%d/%y")
Boeing$Date=as.Date(Boeing$Date,"%m/%d/%y")
GE$Date=as.Date(GE$Date,"%m/%d/%y")
CocaCola$Date=as.Date(CocaCola$Date,"%m/%d/%y")
ProcterGamble$Date=as.Date(ProcterGamble$Date,"%m/%d/%y")

plot(CocaCola$Date,CocaCola$StockPrice,type='l')
plot(CocaCola$Date,CocaCola$StockPrice,type='l',col="red")
lines(ProcterGamble$Date,ProcterGamble$StockPrice,type='l',col="blue")
abline(v=as.Date(c("2000-03-01")),lwd=2)

plot(CocaCola$Date[301:432],CocaCola$StockPrice[301:432],type='l',col="red",ylim = c(0,210))
lines(ProcterGamble$Date[301:432],ProcterGamble$StockPrice[301:432],type='l',col="blue",ylim = c(0,210))
lines(IBM$Date[301:432],IBM$StockPrice[301:432],type='l',col="yellow",ylim = c(0,210))
lines(GE$Date[301:432],GE$StockPrice[301:432],type='l',col="green",ylim = c(0,210))
lines(Boeing$Date[301:432],Boeing$StockPrice[301:432],type='l',col="black",ylim = c(0,210))
abline(v=as.Date(c("2000-03-01")),lwd=2)

abline(v=as.Date(c("1997-09-01")),lwd=2)
abline(v=as.Date(c("1997-11-01")),lwd=2)
abline(v=as.Date(c("2004-01-01")),lwd=2)


sort(tapply(IBM$StockPrice,months(IBM$Date),mean))
subset(tapply(IBM$StockPrice,months(IBM$Date),mean),tapply(IBM$StockPrice,months(IBM$Date),mean)>mean(IBM$StockPrice))
subset(tapply(CocaCola$StockPrice,months(CocaCola$Date),mean),tapply(CocaCola$StockPrice,months(CocaCola$Date),mean)>mean(CocaCola$StockPrice))
subset(tapply(GE$StockPrice,months(GE$Date),mean),tapply(GE$StockPrice,months(GE$Date),mean)>mean(GE$StockPrice))
tapply(IBM$StockPrice,months(IBM$Date),mean)
tapply(GE$StockPrice,months(GE$Date),mean)




