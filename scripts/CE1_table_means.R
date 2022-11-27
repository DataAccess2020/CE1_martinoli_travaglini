
library(tidyverse)

mean_eut <- dat_pro %>% 
  group_by(imp_rel) %>% 
  summarize(
    m = mean(jst_eut, na.rm = T)
  )
mean_eut

