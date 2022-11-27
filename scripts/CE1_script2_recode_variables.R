library(tidyverse)
install.packages("plyr")
library(plyr)

#x-->how important is religion in your life-----------
count(dat$v6)
#y-->do you justify: euthanasia (scale 1/10)-----------
count(dat$v156) 

#create a new dataset which contians the recoded variables------
#x --> imp_rel
#y --> jst_eut

#recode the variable in order to identify the missing values-------
dat_pro <- dat %>%
  mutate(imp_rel=mapvalues(v6, from=c(-2,-1,1,2,3,4),
                      to=c(NA,NA,4,3,2,1))) %>% 
  mutate(jst_eut=mapvalues(v156, from=c(-2,-1,1,2,3,4,5,6,7,8,9,10),
                           to=c(NA,NA,1,2,3,4,5,6,7,8,9,10)))

count(dat_pro$imp_rel)
count(dat_pro$jst_eut)
   
#I inverted the order of the values in order to have an increasing scale-------   
#imp_rel values:
#1="not at all important"
#2="not important"
#3="quite important"
#4="very important"


