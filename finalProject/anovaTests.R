library(gridExtra)
library(ggplot2)

fitam <- lm(mpg ~ am, mtcars)
fitq <- lm(mpg ~ am + qsec, mtcars)
fitqwh <- lm(mpg ~ am + qsec + wt + hp, mtcars)
fitqwd <- lm(mpg ~ am + qsec + wt+ disp, mtcars)

anova(fitam, fitq, fitqw, fitqwh, fitqwd, test="Chisq")
a = aov(mpg ~ am + qsec + wt + hp + disp, mtcars)
summary(a)
