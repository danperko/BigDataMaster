B <- matrix(rep(1,10),4)
print(B)
?matrix

matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,
       dimnames = NULL)

D<-matrix(c("a","b","c","d","e","f","g","h"),3,5)
D
D[1:5]

E<-matrix(,3,3)
test<-c(1,2,3)
E<-cbind(test,test,test)
E<-rbind(E,test)
E

E[,2]<-test




numeros<-c("1","2","3","4","5","6","7","8")
letras<-c("A","B","C","D","E","F","G","H")

print(matrix(seq(1:8),8,8))



B=matrix(paste(matrix(seq(1:8),8,8),t(matrix(LETTERS[seq( from = 1, to = 8 )],8,8))),8,8)
B=matrix(paste(matrix(seq(1:8),8,8),t(matrix(LETTERS[seq(1,8)],8,8))),8,8)
B


