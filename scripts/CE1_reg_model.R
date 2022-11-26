# linear regression model

regression <- lm(jst_eut ~ imp_rel, data = dat_pro)
summary(regression)
#the output its a bit confused: if you look the probability you can see a weird format, can you fix it?

# intercept = 8.3, coefficient = -1.2, adjusted R-squared = 0.141,  *** significance