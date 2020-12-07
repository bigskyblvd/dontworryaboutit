#need to add effect for the site. 

import numpy as np

def bond_price(face_value, coupon_rate, required_rate, payment_periods, years):
  period_rate = (coupon_rate / payment_periods)
  required_rate_periods = (required_rate / payment_periods)
  coupon = (face_value * period_rate)
  periods = (years * payment_periods)

  coupon_presentvalue = coupon * ((1 - (1 / (1 + required_rate_periods) ** periods)) / required_rate_periods)
  principal_presentvalue = face_value / ((1 + required_rate_periods) ** periods)
  bond_price_holder = coupon_presentvalue + principal_presentvalue
  
  print(bond_price_holder)
