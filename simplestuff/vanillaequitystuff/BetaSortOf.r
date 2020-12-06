library(tidyverse)
library(ggplot2)


################################################################
# Currently this is just a terrible simple beta script for     #
# an individual stock that I threw together quickly, need to   #
# come up with something better as well as systematic for the  # 
# total market - - - Need to format this better because this   #
# looks ugly too                                               #
################################################################


# reading the csv price data files into R

stock.price.data <- read_csv(file = 'somestockpricedata.csv')
sp500.price.data <- read_csv(file = 'S&P.csv')

# coverting the stock data

close.price.stock <- as.numeric(stock.price.data$Close)

date.stock <- as.Date(stock.price.data$Date) #do I really need the data for both? 

daily.returns.log.stock <- diff(log(close.price.stock))

mean.stock <- mean(daily.returns.log.stock)

var.stock <- var(daily.returns.log.stock)

# S&P 500 data now

close.price.sp500 <- as.numeric(sp500.price.data$Close)

date.sp500 <- as.Date(sp500.price.data$Date)

daily.sp500.log.returns <- diff(log(close.price.sp500))

mean.sp500 <- mean(daily.sp500.log.returns)

var.sp500 <- var(daily.sp500.log.returns)

# calculating the beta of x stock

covariance.beta <- cov(daily.sp500.log.returns, daily.returns.log.stock)

beta <- covariance.beta / var.sp500 

print(beta)
