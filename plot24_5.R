methods(plot)
help(plot)
#Tham số - Ý nghĩa
#main   - thêm tiêu đề cho graph
#xlab, ylab - nhãn cột x, y
#log: log="x", log="y", log="xy"=> creates logaricthmic axes
#type="p"; "l", "b", "o", "h","s", "n"
#Cau 1:Tim hieu cac loai plot thong qua thong so Type
setwd("C:\\Users\\VANTAN\\")
BFDeaths <- read.table(file = "RIKZ2.txt", header = TRUE)
Benthic <- read.table(file = "RIKZ2.txt", header = TRUE)
Benthic$fBeach <- factor(Benthic$Beach)
plot(Benthic$Richness ~ Benthic$fBeach)
plot(Benthic$Richness ~ Benthic$fBeach, type = "o") #các điểm và đường kẻ sọc
plot(Benthic$Richness ~ Benthic$fBeach, type = "l") #dòng
plot(Benthic$Richness ~ Benthic$fBeach, type = "b") #cả điểm và đường
plot(Benthic$Richness ~ Benthic$fBeach, type = "h") #các đường dọc giống như biểu đồ
plot(Benthic$Richness ~ Benthic$fBeach, type = "s") #stair steps
plot(Benthic$Richness ~ Benthic$fBeach, type = "n") #không tạo ra bất kỳ điểm hoặc dòng nào
plot(Benthic$Richness ~ Benthic$fBeach, type = "p") #điểm

#cau2
#plot.new
plot.new()
#la ham dung de ket thuc khung ve va sang khung ve moi

#win.graph
win.graph(width = 7, height = 7, pointsize = 12)
plot(Benthic$Richness,type="o")
#mo thiet bi do hoa moi

#windows
plot.window(xlim=c(0,1), ylim=c(5,10))
plot(Benthic$Richness,type="o")
#thiet lap toa do cho graphics window

#savePlot
win.graph(width = 7, height = 7, pointsize = 12)
savePlot(filename = "Rplot",plot(Benthic$Richness,type="o"),device = dev.cur(),
         restoreConsole = TRUE)
#luu file tu thiet bi do hoa moi

#locator
locator(n = 512, type = "n")
plot(Benthic$Richness,type="o")
#Doc vi tri cua con tro do hoa khi nhan nut chuot (dau tien). 

#range

x = 1995:2005
y = c(81.1, 83.1, 84.3, 85.2, 85.4, 86.5,
      88.3, 88.6, 90.8, 91.1, 91.3)
plot.new()
plot.window(xlim = range(x),
            ylim = range(y))
lines(x, y, lwd = 2)
title(main = "A Line Graph Example",
      xlab = "Time",
      ylab = "Quality of R Graphics")
axis(1)
axis(2)
box()
#thiet lap pham vi cho graphics window
xmat <- cbind(rnorm(100, -3), rnorm(100, -1), rnorm(100, 1), rnorm(100, 3))
head(xmat)
plot(xmat[,1], type = 'l')
lines(xmat[,2], col = 'red')
lines(xmat[,3], col = 'green')
lines(xmat[,4], col = 'blue')
matplot(xmat, type = 'l')
matplot(xmat, type = 'l', col = 'black')
matplot(xmat, type = 'l', col = c('red', 'green', 'blue', 'orange'))
matplot(x = seq(0, 10, length.out = 100), y = xmat, type='l')
xes <- cbind(seq(0, 10, length.out = 100),
             seq(2.5, 12.5, length.out = 100),
             seq(5, 15, length.out = 100),
             seq(7.5, 17.5, length.out = 100))
matplot(x = xes, y = xmat, type = 'l')

#Ve cac cot cua mot ma tran so voi cac cot cua ma tran khac. 

#persp

x = seq(-10, 10, length= 30)
y = x
f = function(x, y) { r <- sqrt(x^2+y^2); 10 * sin(r)/r }
z = outer(x, y, f)
z[is.na(z)] = 1
op <- par(bg = "white")
persp(x, y, z, theta = 30, phi = 30, expand = 0.5, col = "lightblue")
persp(x, y, z, theta = 30, phi = 30, expand = 0.5, col = "lightblue",
      ltheta = 120, shade = 0.75, ticktype = "detailed",
      xlab = "X", ylab = "Y", zlab = "Sinc( r )"
) = res
round(res, 3)
#Ham nay ve cac do thi phoi canh cua mot be mat tren mat phang x - y
#cut: cat plot ra
#split: tach plot ra