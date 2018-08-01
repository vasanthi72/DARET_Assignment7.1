library(purrr)
library(tidyr)
library(ggplot2)
#Question No.1
data(mtcars)
mtcars %>% gather() %>% ggplot(aes(value)) + facet_wrap(~ key, scales = "free") + geom_histogram()
par(mfrow = c(2,3))
histcars <- for(col in 1:ncol(mtcars))
{
hist(mtcars[,col],
main = c("Distribution by", names(mtcars[col])),
xlab = names(mtcars[col]))
}
plot(density(mtcars$mpg))
shapiro.test(mtcars$mpg)
qqnorm(mtcars$mpg); qqline(mtcars$mpg, col=2)
plot(density(mtcars$drat))
shapiro.test(mtcars$drat)
qqnorm(mtcars$drat); qqline(mtcars$drat, col=2)
plot(density(mtcars$wt))
shapiro.test(mtcars$wt)
qqnorm(mtcars$wt); qqline(mtcars$wt, col=2)
plot(density(mtcars$qsec))
shapiro.test(mtcars$qsec)
qqnorm(mtcars$qsec); qqline(mtcars$qsec, col=2)
#Question No.3
par(mfrow = c(1,3))
boxcars <- for(col in 1:ncol(mtcars))
{
boxplot(mtcars[,col],main = c("distribution of",names(mtcars[col])),
xlab = names(mtcars[col]), ylab = "Value")
}
savehistory("E:/kamagyana/Computing/DARET/Submissions/Asst7.1.r")
