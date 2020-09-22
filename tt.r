library(tidytuesdayR)
library(ggplot2)
library(dplyr)
tt_data <- tt_load("2020-09-15") #govt spend on kids

View(tt_data)
readme(tt_data)
print(tt_data)
View(tt_data$kids)

df <- data.frame(tt_data$kids) %>%
  filter(variable %in% c('PK12ed'))

ggplot(df, aes(x=year, y=inf_adj_perchild, color=state)) +
  geom_line() 

# todo: 
# - color by region
# - changepoint
# - cluster by outcome
# - loess