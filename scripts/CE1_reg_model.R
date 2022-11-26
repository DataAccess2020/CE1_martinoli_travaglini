# linear regression model

regression <- lm(jst_eut ~ imp_rel, data = dat_pro)
summary(regression)
#the output its a bit confused: if you look the probability you can see a weird format, can you fix it?