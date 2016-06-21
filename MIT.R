#working directory

path<-"D:/AV"

setwd(path)
train<-read.csv("Test_u94Q5KV.csv")
train

str(train)

table(is.na(train))

Edx<-read.csv("climate_change.csv")
Edx

nr<-nrow(Edx)
nr

#Train<-data[data$Year<=2006]
#Train

#Split data set upto 2006

Train<-subset(Edx,Year<=2006)
Train

fit <- lm(Train)
summary(fit)

LM<-lm(Temp ~ MEI + CO2 + CH4 + N2O + CFC.11 + CFC.12 + TSI + Aerosols,data=Train)

summary(LM)
Pred<-pred(LM,Train)
Pred