library(dplyr)
library(ggplot2)
df = read.csv("C:/Users/ICS_IT/Desktop/R Tutorial/tested.csv")
ggplot(data = df, aes(x = Age, fill = as.factor(Survived))) + geom_histogram()+
   ylab("Number of Passengerss")+ 
   ggtitle("age Distrbution of Passengers", "and survival rate")


######################################
ggplot(data = df , aes(x = Sex, fill = as.factor(Survived))) + geom_bar()
ggplot(data = df, aes(x = Age, y = Fare)) + geom_point() + geom_smooth(method = "lm")
####################################
table(df$Survived)

table(df$Sex)

table(df$Survived, df$Sex)
#################################################

df_old = df %>%
  filter(Age >= 50)

range(df_old$Age)


df_old_servived = df %>%
  filter(Age>= 50 & Survived == 1) %>%
  select(Sex, Age, PassengerId, Survived)
#############################################


df = df %>%
  mutate(VIP = ifelse(Fare>100, 1, 0))
