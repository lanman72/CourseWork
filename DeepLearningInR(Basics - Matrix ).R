
2^5

stock.price <- c(23,27,23,21,34)
names(stock.price) <- c("Mon", "Tue", "Wed", "Thu", "Fri")
mean(stock.price)
over.23 <- stock.price > 23
stock.price[over.23]
stock.price[stock.price == max(stock.price)]

## Intro to Matrix
v <- 1:10
matrix(v)

matrix(v, nrow = 2)
matrix(1:12, nrow = 4, byrow = FALSE)

matrix(1:12, nrow = 4, byrow = TRUE)


goog <- c(435, 451, 452, 445, 468)
msft <- c(230, 231, 232, 233, 220)

stocks <- c(goog, msft)
print(stocks)

stock.matrix <- matrix(stocks, byrow = TRUE, nrow=2)
print(stock.matrix)

days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
st.names <- c('GOOG', 'MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

print(stock.matrix)

## Matrix Arithmatic
mat <- matrix(1:25, byrow = T, nrow = 5)
mat
mat * 2
mat / 2
mat ^ 2
1/mat

mat > 15
mat[mat > 15]

mat + mat
mat / mat
mat ^ mat
mat * mat
mat %*% mat  ## Matrix Mutliplication

## Matrix Operations
colSums(stock.matrix)
rowSums(stock.matrix)
rowMeans(stock.matrix)
colMeans(stock.matrix)

## Adding new row to Matrix
FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix, FB)
tech.stocks
avg <- rowMeans(tech.stocks)
avg
tech.stocks <- cbind(tech.stocks,avg)
tech.stocks["FB",]


## Matrix Selection and indexing
mat <- matrix(1:50, byrow = TRUE, nrow = 5)
mat
mat[1, ]
mat[1,2]
mat[,1]
mat[1:3]
mat[1:2,1:3]
mat[,2:5]
mat[c(2,4), c(2,5,8)]
mat

## Factor and Categorical Matrix
# factor()
animal <- c('d', 'c', 'd', 'c', 'c')
id <- c(1,2,3,4,5)
factor(animal)
fact.ani <- factor(animal)
  # Nominal -- have no order to them

  # Ordinal -- Order

temps <- c('cold', 'med', 'hot', 'hot', 'hot', 'cold', 'med')
temps
fact.temp <- factor(temps, ordered = TRUE, levels = c('cold', 'med', 'hot'))
fact.temp
summary(fact.temp)
summary(temps)

#***************  R Matrix Exercises *********************************************************
a <- c(1,2,3)
b <- c(4,5,6)
mat <- rbind(a, b)

mat <- matrix(1:9, byrow = TRUE, nrow = 3)
is.matrix(mat)

mat2 <- matrix(1:25, byrow = TRUE, nrow = 5)
mat2[2:3,2:3]
mat2[4:5,4:5]
sum(mat2)
colSums(mat2)
rowSums(mat2)

help("runif") ## Random distribution generations function
runif(20, 1, 50)
matrix(runif(20, 1, 100), byrow = TRUE, nrow = 4)

punif(2, 1, 51)
