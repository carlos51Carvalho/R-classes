#ex1

fun1<- function(x){
  n<-length(x)
  x^(1:n)
}


fun2<- function(x){
  n<-length(x)
  x^(1:n)/(1:n)
}

#c <- (-4:1)
#plot(fun1(c), fun2(c), main = "EX1 ", col = c("red", "blue"))
plot(-4:1, fun1(-4:1), type="l")
lines(-4:1,fun2(-4:1),col="red")


#ex2

fun3<-function(x,y){
  if(length(x)!= length(y)){
    stop("COMPRIMNTO DIFERENTE")
  }
  n<- length(x)
  y[2:n]-x[1:(n-1)]
}

fun4<-function(x,y){
  if(length(x)!= length(y)){
    stop("COMPRIMNTO DIFERENTE")
  }
  n<- length(x)
  exp(y[1:(n-1)])*cos(x[2:n])
}



#ex3

fun5<-function(x){
  if(length(x)< 3){
    stop("COMPRIMNTO insuficiente")
  }
  n<- length(x)
  x[1:(n-2)]+2*x[2:(n-1)]-x[3:n]
}


fun6<-function(x){
  if(length(x)< 2){
    stop("COMPRIMNTO insuficiente")
  }
  n<- length(x)
  sum(exp(-x[2:n])/(x[1:(n-1)]+10))
}


#ex4

fun7<- function(n){
  if(n<=0|n%%1!=0){
    stop("Não é natural")
  }
  k<-1:n
  k[n%%k==0]
}


fun8<- function(n){
  length(fun7(n))== 2
}



#ex5

f<-function(x){
  x^2*cos(x)
}

curve(f,from = -1, to = 2 )
#curve(4-x^2, add=T)


#ex6

g<-function(x){
  ifelse(x<0,-x,x^2)
}

curve(f,from=-2,to=2)
lines(c(-2,2),c(2,4))


#ex7


stat<-function(x){
  u<-c(mean(x), sd(x))
  names(u)<- c("media,desvio")
  u
}

stat(rivers[1:20])



#ex8



f1<-function(x,y){
  b<-sum((x-mean(x))*(y-mean(y)))/sum((x-mean(x))^2)
  a<-mean(y)-b*mean(x)
  u<-c(a,b)
  names(u)<-c("Ordenada á origem", "declive")
  u
}




femur<-c(38,56,59,64,74)
umero<-c(41,63,79,72,84)
f1(femur,umero)
plot(femur,umero)
abline(f1(femur,umero))




