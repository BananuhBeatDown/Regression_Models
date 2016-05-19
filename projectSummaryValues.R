library(gridExtra)
library(ggplot2)
library(data.table)

fitwt <- lm(mpg ~ wt, mtcars)
fitq <- lm(mpg ~ qsec, mtcars)
fithp <- lm(mpg ~ hp, mtcars)
fitdis <- lm(mpg ~ disp, mtcars)

g1 <- ggplot(mtcars, aes(x = wt, y = mpg, colour = am)) + geom_point() + 
  geom_smooth(colour='red') + geom_abline(intercept = coef(fitwt)[1], slope=coef(fitwt)[2], size=1)
g2 <- ggplot(mtcars, aes(x = qsec, y = mpg, colour = mpg)) + geom_point() + 
  geom_smooth(colour='red') + geom_abline(intercept = coef(fitq)[1], slope=coef(fitq)[2], size=1)
g3 <- ggplot(mtcars, aes(x = hp, y = mpg, colour = am)) + geom_point() + 
  geom_smooth(colour='red') + geom_abline(intercept = coef(fithp)[1], slope=coef(fithp)[2], size=1)
g4 <- ggplot(mtcars, aes(x = disp, y = mpg, colour = am)) + geom_point() + 
  geom_smooth(colour='red') + geom_abline(intercept = coef(fitq)[1], slope=coef(fitdisp)[2], size=1)

grid.arrange(g1, g2, g3, g4, ncol=2, nrow=2)