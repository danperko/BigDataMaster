n.s<-seq(1,10000000,50000)
a<-c()
for (values in n.s){
  start<- Sys.time()
  values*(values+1)/2
  end<-Sys.time()
  a<-append(a,end-start)
}  

lines(n.s, a, col="red")


n.s<-seq(1,10000000,50000)
ab<-c()
for (values in n.s){
  start<- Sys.time()
  b=0
  for (valueA in 1:values){
    b<-b+valueA
  }
  end<-Sys.time()
  ab<-append(ab,end-start)
}  

plot(n.s, ab, col="green")