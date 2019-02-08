library(ggplot2)
waterstats.agg<- aggregate(avgdailypercent ~ status, waterstats, mean)
View(waterstats.agg)
ggplot(waterstats.agg, aes(x=status, y=avgdailypercent, fill=status)) + 
  xlab("Reproductive Status") + ylab("Percent Body Weight Lost Daily") +  
  geom_bar(stat= "identity")
