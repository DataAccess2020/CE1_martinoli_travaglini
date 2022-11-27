#barplot about important of religion-------
barplot(prop.table(table(dat_pro$imp_rel)),
        names.arg = c("Not at all important", "Hardly important", "Quite important", "Very important"),
        ylab = "Proportion",
        main = "How important is religion for you?")


#linear regression plot------
dat_pro %>%
  ggplot(., aes(x = imp_rel, y = jst_eut)) +
  geom_smooth(method = "lm", col = "red") +
  scale_y_binned(breaks = seq(1, 10, by = 1)) +
  xlab("religion") +
  ylab("euthanasia") +
  theme_bw() 


  

    
    
    