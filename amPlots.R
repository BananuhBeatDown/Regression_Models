library(gridExtra)
library(ggplot2)

fitam <- lm(mpg ~ am, mtcars)

g1 <- ggplot(mtcars, aes(x = am, y = mpg, color=qsec)) + geom_point() + 
  geom_smooth(colour='red') + geom_abline(intercept = coef(fitam)[1], slope=coef(fitam)[2], size=1, colour='blue')

g2 <- ggplot(mtcars, aes(x = am, y = fitam$residuals, color=qsec)) + geom_point() + 
  geom_smooth(method=lm)

grid.arrange(g1, g2, ncol=1, nrow=2)