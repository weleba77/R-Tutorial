df = read.csv("C:/Users/ICS_IT/Desktop/R Tutorial/tested.csv")


str(df)

df_top_5 = head(df, 5)


age =df$Age

hist(age)

hist(df$Pclass)


hist(df$Fare)

hist(df$Survived)


df_old = df[df$Age >= 50,]


range(df_old$Age, na.rm = TRUE)

hist(df_old$Survived)



df_old_survived = df[df$Age>=50 & df$Survived==1, c(1,2,3,4)]


write.csv(df_old_survived, "C:/Users/ICS_IT/Desktop/R Tutorial/titanic_old_survived.csv")
