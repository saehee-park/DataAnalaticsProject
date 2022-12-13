data=read.csv("2021기상+대중교통eng.csv")
data
m=lm(total~weekend+temperature+rain+wind_speed+humidity,data=data)
summary(m)

n=lm(log(total)~weekend+temperature+rain+wind_speed+humidity,data=data)
summary(n)

m2=step(m,direction="backward")
n2=step(n,direction="backward")
summary(m2)
summary(n2)

anova(m)
anova(n)

anova(m2)
anova(n2)
