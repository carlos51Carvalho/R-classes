c<-1:30

x<-2:30

c(1,2,3,4,5,3)
nomes<- c("ANA","BRUNO","CÃO")
length(c)
sum(x,c)
sum(60,70)


seq(3,60)
x<-c(2,-1,0,1,5)
c<-c(1,2,3,4)
z<-c(2,3)


#ex3
v1 <- (1:30)
v2 <- seq(1,29, 2)
v3 <- seq(29,1,-2)
v4 <- c(seq(1,30),seq(29,1))
v5 <- c(FALSE,TRUE,FALSE,TRUE, TRUE)
vet<- c(4,6,3)
rep(vet,10)
rep(vet, len =31)
rep(vet, c(10,20,30))

#ex4
v1<- 3^(0:31)
v2<- 0.1^seq(3,36,3)*0.2^seq(1,34,3)
v3<- 2^(1:25) / (1:25)

#ex5
v1<-c()
for (i in (10:100)) {
  v1<- c(v1,i^3+4*i^2)
}
sum(v1)

v1<-(10:100)
sum(v1^3 + 4*v1^2)



v2<-(1:25)
sum(2^v2/v2 + 3^v2/v2^2)




#ex6
v1<-seq(2,38,2)
v2<- seq(3,39,2)
#sum(cumprod(v1/v2))
sum(cumprod(v1)/cumprod(v2))


#ex7

vetx <- scan(file = "vetor_x.txt")
vety <- scan(file = "vetor_y.txt")


max(vetx)
mean(vetx)
c(vety[2], vety[49] , vety[215])
vetx[-67:-213]

length(vety[vety > 600])
sum(vety>600)

vety[vety>600]

which(vety>600)

vetx[which(vety>600)]

length(vety[vety>=200 & vety <=600])
length(which(vety>=200 & vety <=600))
sum(vety>=200 & vety <=600)

length(vetx[vetx%%2 == 0])
sum(vetx%%2==0)

sort(vetx)
vetx[order(vetx)]

vetx[order(vety)]




#ex8

proba<- c(0.1,0.1,0.1,0.1,0.2,0.4)
freqesp <- proba*100

prob <- sample(1:6,100,replace = TRUE, prob =  proba )

mean(prob)

freqobs <- c(sum(prob ==1), sum(prob ==2), sum(prob ==3), sum(prob ==4), sum(prob ==5), sum(prob ==6))

table(prob)

par(bg = "green")
plot(table(prob), main = "Eperiencia", xlab = "Faces do Dado", ylab = "Quantas vezes", col= "blue")
points(freqesp, col = "red")

sum(((freqesp - freqobs)^2)/freqesp)


