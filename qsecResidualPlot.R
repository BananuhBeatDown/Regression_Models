library(gridExtra)
library(ggplot2)

fitqw <- lm(mpg ~ am + qsec + wt, mtcars)
fitqc <- lm(mpg ~ am + qsec + cyl, mtcars)
fitqh <- lm(mpg ~ am + qsec + hp, mtcars)
fitqd <- lm(mpg ~ am + qsec + disp, mtcars)

y0 = as.numeric(rep(0,32))

g1 <- ggplot(mtcars, aes(x = qsec, y = fitqw$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + geom_line(y=0) +
  geom_segment(aes(x = mtcars$qsec, y=fitqw$residuals, xend = mtcars$qsec, yend = y0))

g2 <- ggplot(mtcars, aes(x = qsec, y = fitqc$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + geom_line(y=0) +
  geom_segment(aes(x = mtcars$qsec, y=fitqc$residuals, xend = mtcars$qsec, yend = y0))

g3 <- ggplot(mtcars, aes(x = qsec, y = fitqh$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + geom_line(y=0) +
  geom_segment(aes(x = mtcars$qsec, y=fitqh$residuals, xend = mtcars$qsec, yend = y0))

g4 <- ggplot(mtcars, aes(x = qsec, y = fitqd$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + geom_line(y=0) + 
  geom_segment(aes(x = mtcars$qsec, y=fitqd$residuals, xend = mtcars$qsec, yend = y0))

grid.arrange(g1, g2, g3, g4, ncol=2, nrow=2)