library("here")
library("tidyverse")
library("ggplot2")
df <- read.csv("TBQ05.20211116133909.csv")
df$VALUE <- as.numeric(df$VALUE)
df$VALUE<-replace(df$VALUE,is.na(df$VALUE),0)

df$VALUE <- as.numeric(df$VALUE)

df$Region.of.Trade <- as.factor(df$Region.of.Trade)
by(df$VALUE, df$Region.of.Trade,sum)




ggplot(data=df)+
  geom_point(aes(x=Quarter,y=VALUE,color=Port)) +
  ggtitle("Quarterly Tonnage Arriving From Great Britain and Northern Ireland") +
  xlab("Quarter") +
  ylab("Tonnage") +
  theme_minimal()
#95/100 did not push data
