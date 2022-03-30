n=5

a=0
for (values in 1:n){
  a<-a+values
}
a



#opcion 1
a=0
for (values in 1:n){
  a<-a+values
}
a
#opcion 2
sum(seq(1,n))


#opcion 3

n*(n+1)/2




c <- c(20, 20, 7, 3)
d <- c(10, 10, 64, 10)

c
 
#Medir tiempo en R
n=100000000
start<- Sys.time()
#opcion 1
a=0
for (values in 1:n){
  a<-a+values
}
a

end<- Sys.time()
timer<-end-start
timer

#Medir tiempo en R
start<- Sys.time()


#opcion 2
sum(seq(1,n))


end<- Sys.time()
timer<-end-start
timer

 
#Medir tiempo en R
start<- Sys.time()


#opcion 3
n*(n+1)/2



end<- Sys.time()
timer<-end-start
timer


n<-1000000
a<-c()
for (values in 1:n){
  start<- Sys.time()
  values*(values+1)/2
  end<-Sys.time()
  a<-append(a,end-start)
}  

plot(a,1:n)




