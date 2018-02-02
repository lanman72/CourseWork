aa=100:1
bb=sin(aa/3)
cc=aa*bb
plot(cc, type="l")
p=findPeaks(cc, 0)
v<- findValleys(cc, 0)
points(p, cc[p], )
points(v, cc[v], )

p

lmod <- lm(p ~ index(p))
print(lmod)


plot(sdat[100:150]$stochFastK71)
sdat
sdat[100:150]$stochFastK71
nrow(sdat)
length(sdat)
#***********************************
par(mfrow=c(2,1))
test <- ts(sdat[2468:2767, c("stochFastD71", "stochSlowD71","Close")] )
#test <- ts(sdat[500:700, "High"] )

## Subtract 1 from the Peak and Valley (due to function indicates point after Peak or Valley)
p = findPeaks(test[,"stochFastD71"], 0) -1
v = findValleys(test[,"stochFastD71"], 0) -1

c(p, v)
plot(test[,"stochFastD71"])
lines(test[, "stochSlowD71"], col = "blue")
#plot(test[p-1])
abline(v = p)
lines(p, test[p, "stochFastD71"], col = "red")
lines(v, test[v, "stochFastD71"], col = "green")
plot(test[,"Close"])
abline(v = p, col = "blue")
#text(x = p, y = 110, p)
crossover <- test[,"stochFastD71"] < test[,"stochSlowD71"]
crossover
points(p-1, test[p-1], col = "red")
points(v-1, test[v-1], col = "green")

p[5]


for (i in 1:(length(p)-2) ) {
  l = line(test[p,"stochFastD71"][i:(i+2)])
  text(x = p[i+2], y = test[p[i+2],"Close"], round(coef(l)[2], 3), col = "blue" )
  print(paste0(p[i+2], " >> ", coef(l)[2]) )
}


line(test[v-1][13:15])
line(test[v-1][9:11])
line(test[v-1][8:10])
line(test[v-1][7:9])
line(test[v-1][6:8])
line(test[v-1][5:7])
line(test[v-1][4:6])

coef(l)
abline(coef(l))


length(test[p])
lines(test[p-1][1:13])
plot(test[p-1][2:5], col = "red")
test[p]
test[p-1]
