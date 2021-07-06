#EX1


#A)
str(iris)

#B)
attach(iris)

Species[Petal.Length == max(Petal.Length)]


#C)
mean(Petal.Length[Species=="virginica"])


#d)
tapply(Petal.Length, Species, mean)


#E)

hist(Petal.Length[Species =="virginica"], plot = F)
hist(Petal.Length[Species =="virginica"], freq = F)


#F)

Sepal.Length.Reord <- Sepal.Length[order(Sepal.Length)]
Species.reord <- Species[order(Sepal.Length)]
novo<-data.frame(Sepal.Length.Reord,Species.reord)

novo2<-iris[order(Sepal.Length),c(1,5)]
names(novo2)<-c("Sepal.Length.novo","Species.novo")

detach(iris)





#EX2

traf<-read.table("trafego.txt", header = T)

attach(traf)

#A)

str(traf)
max(acidentes)
limite[acidentes==max(acidentes)]


#b)

tapply(acidentes,limite, mean)


#C)

acs<-acidentes[limite=="n"]
acc<-acidentes[limite== "s"]
hist(acs)
X11()  ## ver cada um dos hist em semparadores separados o primeiiro no plot e o outro x()
hist(acc)





#EX3

#A)

str(airquality)
attach(airquality)
max(Temp[Month == 7])
sum(Temp == max(Temp[Month == 7]) & Month == 7)

##airquality(Temp == max(Temp[Month == 7]) & Month == 7)


#B)

tapply(Temp, Month, max)

#C)

split(Temp,Month)
sapply(split(Temp,Month),max)


#d)

is.na(Ozone)
sum(is.na(Ozone))
sum(is.na(Solar.R))


#e)

which(is.na(Ozone))


#f)

novoAr<-data.frame(rowSums(is.na(airquality))==0)
str(novoAr)


#G)

f<-funciton(x){
  v<-c(max(x),min(x,mean(x)))
  names(v)<-c("maximo","minimo","media")
  v
}

##tapply(novoAr$Ozone,novoAr$Month,f)
