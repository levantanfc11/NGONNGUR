setwd('C:\\VANTAN')
#Bài tập 1
#a
BFCases = read.table('BirdFluCases.txt',sep = "\t",header=TRUE,fill = TRUE)
names(BFCases)
str(BFCases)

#Tính tổng số người chết mỗi năm
Cases =rowSums(BFCases[,2:16])
names(Cases)=BFCases[,1]

par(mfrow=c(2,2),mar=c(3,3,2,1))
pie(Cases,main="Số lượng người chết mỗi năm")
#b
#Tính tổng số người chết của mỗi quốc gia từ 2003 - 2008
Cases1=colSums(BFCases[2:16],na.rm=TRUE)


barplot(Cases1, main = "Người chết của mỗi quốc gia",
        xlim = c(0, 30),
        ylim = c(0, 120),
        col = "red")
box()
#BT2
veg = read.table('vegetation2.txt',header=TRUE)
names(veg)
str(veg)
veg.M <-tapply(veg$R, 
               INDEX=veg$Transect, 
               FUN=mean)
veg.sd <-tapply(veg$R, 
                INDEX=veg$Transect, 
                FUN=sd)
MSD <- cbind(veg.M, veg.sd)
MSD
barplot(veg.M)
bp <- barplot(veg.M, xlab="Transect",
              ylim = c(0,50),
              ylab="R",
              col=rainbow(8)
)
arrows(bp, veg.M, 
       bp, veg.M+veg.sd,
       lwd=1.5,
       angle=90,
       length=0.1
)
box()
veg.le <- tapply(veg$R,
                 INDEX=veg$Transect,
                 FUN=length)
#se= standard error= 
#standard deviation/square root of the sample size
#
veg.se <- veg.sd/sqrt(veg.le)
veg.se
stripchart(veg$R~veg$Transect,
           vert=TRUE,
           pch=1,
           method="jitter",
           jit=0.05,
           xlab="R",
           ylab="Transect")
points(1:8, veg.M, pch=16,
       cex=1.5)
arrows(1:8, veg.M,
       1:8, veg.M+veg.se,
       lwd=1.5,
       angle=90,
       length = 0.1)
arrows(1:8, veg.M,
       1:8, veg.M-veg.se,
       lwd=1.5,
       angle=90,
       length = 0.1)