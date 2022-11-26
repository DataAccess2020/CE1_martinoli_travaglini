#barplot about important of religion
barplot(prop.table(table(dat_pro$imp_rel)),
        names.arg = c("Not at all important", "Hardly important", "Quite important", "Very important"),
        ylab = "Proportion",
        main = "How important is religion for you?")


#linear regression plot
ggplot(filter(dat_pro), aes(y = jst_eut, x = imp_rel)) +
  geom_smooth(method = "lm", col = "blue") +
  ylab("justifying euthanasia") +
  xlab("important of religion") +
  theme_bw()


  

    
    
    