CPS<-read.csv("CPSData.csv")
table(CPS$Industry)
sort(table(CPS$Industry))
sort(table(CPS$State))
sort(table(CPS$Citizenship))
116639+7073
(116639+7073)/131302
sort(table(CPS$Race,CPS$Hispanic))


#this will give columns which dont have NA values 
a<-as.data.frame(character(1))
j=1
for(i in 1:14){
  if(is.na(table(is.na(CPS[i]))[2])){
     a[j]<-names(CPS[i])
     j=j+1
    }
}

table(CPS$Region,is.na(CPS$Married))
table(CPS$Sex,is.na(CPS$Married))
table(CPS$Citizenship,is.na(CPS$Married))
table(CPS$Age,is.na(CPS$Married))


table(CPS$State,is.na(CPS$MetroAreaCode))
table(CPS$State)

table(CPS$Region,is.na(CPS$MetroAreaCode))/NROW(subset(CPS,CPS$Region=="South"))

sort(tapply(is.na(CPS$MetroAreaCode),CPS$State,mean))



MetroAreaMap<-read.csv("MetroAreaCodes.csv")
CountryMap<-read.csv("CountryCodes.csv")

CPS=merge(CPS,MetroAreaMap,by.x="MetroAreaCode",by.y="Code",all.x=TRUE) #all.x keeps those values 
#does not have matching values or no values are present in that cell
str(CPS)

sort(table(CPS$MetroArea))

sort(tapply(CPS$Hispanic,CPS$MetroArea,mean))

sort(tapply(CPS$Race=="Asian",CPS$MetroArea,mean))


sort(tapply(CPS$Education=="No high school diploma",CPS$MetroArea,mean,na.rm=TRUE))

CPS=merge(CPS,CountryMap,by.x = "CountryOfBirthCode",by.y = "Code",all.x = TRUE)


1-tapply(CPS$Country=="United States",CPS$MetroArea,mean,na.rm=TRUE)
sort(tapply(CPS$Country=="India",CPS$MetroArea,sum,na.rm=TRUE))
sort(tapply(CPS$Country=="Brazil",CPS$MetroArea,sum,na.rm=TRUE))
sort(tapply(CPS$Country=="Somalia",CPS$MetroArea,sum,na.rm=TRUE))







