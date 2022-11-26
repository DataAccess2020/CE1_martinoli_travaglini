library(tidyverse)
install.packages("plyr")
library(plyr)


count(dat$v6) # x-->how important is religion in your life
count(dat$v156) #y-->do you justify: euthanasia (scale 1/10)

#create a new dataset which contians the recoded variables
#x --> imp_rel
#y --> jst_eut


dat_pro <- dat %>%
  mutate(imp_rel=mapvalues(v6, from=c(-2,-1,1,2,3,4),
                      to=c(NA,NA,4,3,2,1))) %>% 
  mutate(jst_eut=mapvalues(v156, from=c(-2,-1,1,2,3,4,5,6,7,8,9,10),
                           to=c(NA,NA,1,2,3,4,5,6,7,8,9,10)))

count(dat_pro$imp_rel)
count(dat_pro$jst_
      
#imp_rel values:
#1="not at all important"
#2="not important"
#3="quite important"
#4="very important"
#I inverted the order of the values in order to have an increasing scale

