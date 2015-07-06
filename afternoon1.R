
library(data.table)
dt <- data.table(x=1:3, y=c(4,5,6), z=letters[1:3])
dt

class(dt)

DT <- data.table(x=1:5, y=6:10, gp=c('a','a','a','b','b'))
DT
dim(DT)

DT[,z:=mean(x+y),by=gp]
DT
dim(DT)




