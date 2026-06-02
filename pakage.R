library(dplyr)
library(ggplot2)
df = read.csv("C:/Users/ICS_IT/Desktop/R Tutorial/tested.csv")
ggplot(data = df, aes(x= Age, fill = as.factor(Survived))) + geom_histogram()

       