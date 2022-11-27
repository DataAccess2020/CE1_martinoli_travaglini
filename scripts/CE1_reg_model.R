# linear regression model------

options(scipen = 99)

regression <- lm(jst_eut ~ imp_rel, data = dat_pro)
summary(regression)

# statistical data--------
# intercept = 8.3
#coefficient = -1.2
#adjusted R-squared = 0.141 
# *** significance