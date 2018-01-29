## Working with subsets of data

rng.length = 100
rng.last = rng.length + 1
rng.start = 1
rng.loop.max = max(row(sdat))-rng.length 

sdat$DSMax <- 0.00
sdat$DSmin <- 0.00

for (i in 1:rng.loop.max) {
  #Set vars based on loop value i
  rng.start <- i;
  rng.end <- rng.start + rng.length;

  # Create XTS for range of records
  test <- sdat[rng.start:rng.end, c("High", "Low")]
  test$recnum <- max(row(test)) - row(test$High)
  
  # Find High for range and set Days since max
  test.max.high <- max(test[,"High"])
  test.days.since.max <- as.numeric(max(test[test$High == test.max.high, "recnum"]))
  
  # Find Low for range and set Days since min
  test.min.low <- min(test[,"Low"])
  test.days.since.min <- as.numeric(min(test[test$Low == test.min.low, "recnum"]))
  
  test.cur.dt <- index(test[rng.last])
  test.sma <- mean(test$High)

  test.green <- (rng.length - test.days.since.max)/rng.length*100
  test.red  <- (rng.length - test.days.since.min)/rng.length*100
  is.xts(testrslt)
  testrslt <- rbind.xts(testrslt, test)
  print(paste0(test.cur.dt, " green>> ", test.green, " red>> ", test.red) )
    }


rm(x)
x <- xts(1:10, Sys.Date()+1:10)
str(x)

merge(x,x)
rbind(x,x)
rbind(x[1:5],x[6:10])
c(x,x)


test$DaysSinceMax <- 
test[index(test) == test.cur.dt,]$DaysSinceMax <- 10;
sdat[index(test) == test.cur.dt]
rng.end = rng.start + rng.length



sdat[rng.start:rng.end, "High"]
sdat[1:21, "High"]
max(sdat[rng.start:rng.end, "High"])

as.ts(sdat)
test <- as.ts(sdat[rng.start:rng.end, "High"])
test <- sdat[rng.start:rng.end, "High"]
test$recnum <- max(row(test)) - row(test)
test.max.high <- max(test[,"High"])
test.cur.dt <- index(test[rng.last])


test
test.max.high
test.max.high.dt <- index(test[test == test.max.high])


test.days.since.max <- as.numeric(test[test == test.max.high]$recnum)
test.days.since.max

index(sdat[1:10, "High"] == test.max.high)
