#Bai 1
#12
answer <- 0
  for (j in 3:5) {answer <- j+answer}
answer
#22
answer <- 10
for (j in 3:5) {answer <- j+answer}
answer
#600
answer <- 10
for (j in 3:5) {answer <- j*answer}
answer
#Bai 2
help("prod")
x <- c(3, 5, 6, 7)
prod(x)
#Bai 3
tong <- 0
  for (j in 1:100) {tong <- j+tong}
tong
x <- (1:100)
sum(x)
#Bai 4
x <- (1:50)
prod(x)
tich <- 1
  for (j in 1:50) {tich <- j*tich}
tich

#bai 5
bankinh <- 3:20
thetich <- 4*pi*bankinh^3/3
bangketqua <- data.frame(bankinh=bankinh, thetich=thetich)
print(bangketqua)

#bai 6
factor(bangketqua, order = TRUE , levels = c("bankinh", "thetich"))
sapply(bangketqua,length)
sapply(bangketqua, sum)

