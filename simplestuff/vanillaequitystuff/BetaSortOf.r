library(tidyverse)
library(ggplot2)

# reading the csv price data files into R 

stock.price.data <- read_csv(file = 'somestockpricedata.csv')
sp500.price.data <- read_csv(file = 'S&P.csv')

# calculating some shit

close.price.stock <- as.numeric(stock.price.data$Close)

date.stock <- as.Date(stock.price.data$Date)

daily.returns.log.stock <- diff(log(close.price.stock))

expected.value.stock <- mean(daily.returns.log.stock)

var.stock <- var(daily.returns.log.stock)

# S&P 500 data now

close.price.sp500 <- as.numeric(sp500.price.data$Close)

date.sp500 <- as.Date(sp500.price.data$Date)

daily.sp500.log.returns <- diff(log(close.price.sp500))

expected.value.sp500 <- mean(daily.sp500.log.returns)

var.sp500 <- var(daily.sp500.log.returns)

# calculating beta

covariance <- cov(daily.sp500.log.returns, daily.returns.log.stock)

beta <- covariance / var.sp500 

print(beta)
