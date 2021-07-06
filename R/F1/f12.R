##Ficha1

#ex3

v<-1:30
v<-seq(1,30,2)
v<-seq(29,1,-2)
v<-c(1:30, 29:1)
v <- c(FALSE,TRUE,FALSE,TRUE, TRUE)
v<-c(4,6,3)
rep(v,10)
rep(vet, len =31)
rep(v,c(10,20,30))


#ex4

v<-3^(0:31)
v<-0.1^seq(3,36,3)*0.2^seq(1,34,3)
v<-2^(1:25)/(1:25)


#ex5

sum((10:100)^3+ 4*(10:100)^2)
sum(2^(1:25)/(1:25) +3^(1:25)/(1:25^2))


#ex6    
    
sum(cumprod((seq(2,38,2)/seq(3,39,2))))


#ex7
#não esta a dar para fazer o scan

#ex8

p<-c(0.1,0.1,0.1,0.1,0.2,0.4)
freqest<-p*100

prob<-sample(1:6 , 100, replace = TRUE, prob =  p )  

mean(prob)

freqobs<-c(sum(prob ==1), sum(prob ==2), sum(prob ==3), sum(prob ==4), sum(prob ==5), sum(prob ==6))
table(prob)

plot(table(prob), main="Exp", xlab = "face dados", ylab = "quant", col = "blue")
points(freqest, col = "green")

sum(((freqest - freqobs)^2)/freqest)










##Ficha2

#ex1

f1<- function(x){
  n<-length(x)
  x^(1:n)
}


f2<- function(x){
  n<-length(x)
  x^(1:n)/(1:n)
}


#ex2


f3<- function(x,y){
  if(length(x)!=length(y)){stop("TAMANHOS DIFERENTES")}
  n<- length(x)
  y[2:n]-x[1:(n-1)]
}

f4<-function(x,y){
  if(length(x)!=length(y)){stop("TAMANHOS DIFERENTES")}
  n<- length(x)
  exp(y[1:(n-1)])*cos(x[2:n])
}


#ex3

f5<-function(x){
  if(length(x)<3){stop("TAMANHOS INVALIDO")}
  n<- length(x)
  x[1:(n-2)]+2*x[2:(n-1)]-x[3:n]
}

f6<-function(x){
  if(length(x)<3){stop("TAMANHOS INVALIDO")}
  n<- length(x)
  sum(exp(-x[2:n])/(x[1:(n-1)]+10))
}

#ex4

div<-function(n){
  if(n<=0|n%%1!=0){
    stop("Não é natural")
  }
  k<-1:n
  k[n%%k==0]
}

primo<-function(n){
  length(div(n))==2
}


#ex5

f<-function(x){
  x^2*cos(x)
}

curve(f,from = -1, to = 2 )
legend(locator(1), expression(x^2*cos(x)), bty = "n")


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












