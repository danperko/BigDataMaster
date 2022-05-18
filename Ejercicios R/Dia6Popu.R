

getwd()
setwd("C:/Users/danny/BigDataMaster")

data<-read.csv("popu_2017.csv", sep = ",")

is.data.frame(data)

summary(data)
str(data)

head(data, 10)

colnames(data)[5]<-"Health"
colnames(data)[6]<-"Education"
colnames(data)[7]<-"HIV"



data[data==".."]<-NA

data<-data[-2]
data<-data[-1]
colnames(data)

write.csv(data, "popu_2017pro.csv")


data<-read.csv("popu_2017pro.csv", sep = ",")

data["HIV/Education"]<-data["HIV"]/data["Education"]


data[,"Health"]<-as.double(data[,"Health"])
data[,"Education"]<-as.double(data[,"Education"])
data[,"HIV"]<-as.double(data[,"HIV"])



#En cada fila accede a columna Health 
#y devuelve los valores que sean mayores de 10.5
data[data$Health >= 10.5,]

#na.exclude() quita registros con valores NA
na.exclude(data[data$Health >= 10.5,])



#Buscamos corelaciones

plot(na.exclude(data)$Health,na.exclude(data)$Education)
plot(na.exclude(data)$Health,na.exclude(data)$HIV)
plot(na.exclude(data)$Education,na.exclude(data)$HIV)

cor(na.exclude(data)$Health,na.exclude(data)$Education)
cor(na.exclude(data)$Health,na.exclude(data)$HIV)
cor(na.exclude(data)$Education,na.exclude(data)$HIV)

data[order(-data$Health)]


plot(na.exclude(data$Health) /na.exclude(data$Education))

sd(na.exclude(data)$Education /na.exclude(data)$HIV)

install.packages("ggplot2")
?ggplot2

