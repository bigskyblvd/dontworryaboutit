rates <- c(0.06, 0.07, 0.05, 0.09, 0.09, 0.08, 0.08, 0.08)      # this is where the forward rates go
t <- c(1:8)                                                     # the damn time period
cashflows <- rep(10,8)                                          # repeats a cash flow of 10 million 8 times
pv.1 <- cashflows / ((1 + rates) ^ t)                           # the present value of those cash flows 
totalpv.1 <- sum(pv.1)                                          # creates an object that is the total present value of the cash flows
salvage.value <- 5                                      
salvage.pv <- salvage.value / ((1 + rates[8]) ^ t[8])           # present value of the salvage value
totalpv <- totalpv.1 + salvage.pv                               # total present value of the machine
