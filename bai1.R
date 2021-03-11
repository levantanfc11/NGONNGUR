setwd("C:\\VANTAN")
vd <- read.table(file="vd1.txt", header = TRUE)
vd1 <- read.table(file="vd2.txt", header = TRUE)
vd2 <- read.table(file="vd3.txt", header = TRUE, sep = ";")

squid1 <- read.table(file="squid.txt", header = FALSE)
squid1
squid1 <- read.table(file="squid.txt", header = TRUE, dec = ".")
squid1
squid2 <- scan(file = "squid.txt", what = "Character")
squid1
squid2
