

c*d


c <- c(6, 20, 7, 3)
d <- c(10, 10, 64, 10)
for (valuesA,valuesB in c,d){
  print(valuesA*valuesB)
}
    

revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)


ben<-sum(revenue)-sum(expenses)
ben
benMon<-revenue-expenses
benMon
benMonNet<-revenue/1.21-expenses/1.21
benMonNet
benNet<-sum(revenue/1.21)-sum(expenses/1.21)
Margen<-benMonNet/revenue*100
Margen

GMon<-c()
BMon<-c()
for (values in Margen){
  if (values > sum(Margen)/12){
    GMon<-append(GMon,values)
  }else{
    BMon<-append(BMon,values)
  }
}
sum(Margen)/12
GMon
BMon

max(Margen)
min(Margen)
round(Margen,2)



