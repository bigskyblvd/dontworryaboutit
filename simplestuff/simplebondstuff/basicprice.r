library(tidyverse)
library(ggplot2)

#yah yah

bond_price <- function(face_value, coupon_rate, required_rate, years){
  
  semiannual_rate <- (coupon_rate / 2)
  required_rate_semi <- (required_rate / 2)
  coupon <- (face_value * semiannual_rate)
  periods <- (years * 2)

  coupon_presentvalue <- coupon * ((1 - (1 / (1 + required_rate_semi) ^ periods)) / required_rate_semi)
  principal_presentvalue <- face_value / ((1 + required_rate_semi) ^ periods)
  bond_price_holder <- coupon_presentvalue + principal_presentvalue
  print(bond_price_holder)
}
