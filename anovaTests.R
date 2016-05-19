library(gridExtra)
library(ggplot2)

fitam <- lm(mpg ~ am, mtcars)
fitq <- lm(mpg ~ am + qsec, mtcars)
fitqwc <- lm(mpg ~ am + qsec + wt + cyl, mtcars)
fitqwh <- lm(mpg ~ am + qsec + wt + hp, mtcars)
fitqwd <- lm(mpg ~ am + qsec + wt+ disp, mtcars)

anova(fitam, fitq, fitqw, fitqwc, fitqwh, fitqwd, test="Chisq")
