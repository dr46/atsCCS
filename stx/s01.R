# s01.R

# Spliting the data file by country and time

dat <- read.csv("clean_dat.csv", sep = ";")

dat <- dat[,c(2,28:34,61:65)]

a <- dat[ which(dat$country=='Australia'), ]
a <- a[,2:13]
a1 <- a[,1:7]
a2 <- a[, c(1:2,8:12)]

c <- dat[ which(dat$country=='Canada'), ]
c <- c[,2:13]
c1 <- c[,1:7]
c2 <- c[, c(1:2,8:12)]

s <- dat[ which(dat$country=='Spain'), ]
s <- s[,2:13]
s1 <- s[,1:7]
s2 <- s[, c(1:2,8:12)]

write.csv(a, "ds/a.csv", row.names = F)
write.csv(a1, "ds/a1.csv", row.names = F)
write.csv(a2, "ds/a2.csv", row.names = F)
write.csv(c, "ds/c.csv", row.names = F)
write.csv(c1, "ds/c1.csv", row.names = F)
write.csv(c2, "ds/c2.csv", row.names = F)
write.csv(s, "ds/s.csv", row.names = F)
write.csv(s1, "ds/s1.csv", row.names = F)
write.csv(s2, "ds/s2.csv", row.names = F)

rm(dat, a, a1, a2, c, c1, c2, s, s1, s2)

