
library(tidyquant)
library(dplyr)
prices <- c(
  "RRRP3", "ABEV3", "ASAI3", "BPAN4", "BPAC11", "CCRO3",
  "GGBR4", "ENEV3", "ENGI11", "EMBR3", "ENBR3", "FLRY3"
) %>%
  paste0(".SA") %>%
  tq_get(get = "stock.prices", from = " 2010-01-01") %>%
  mutate(symbol = sub(".SA", "",symbol))
write.table(prices, "prices.csv", sep = ",", row.names= FALSE)
prices <- read.csv("C:/Users/win7/Desktop/programas em R/FlexivelPranchaDeDash/prices.csv")%>%
  mutate(date = as.Date(date))
