library(gridExtra)
library(ggplot2)

fitq <- lm(mpg ~ am + qsec, mtcars)
fitw <- lm(mpg ~ am + wt, mtcars)
fith <- lm(mpg ~ am + hp, mtcars)
fitd <- lm(mpg ~ am + disp, mtcars)

y0 = as.numeric(rep(0,32))

g1 <- ggplot(mtcars, aes(x = wt, y = fitq$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + geom_line(y=0) +
  geom_segment(aes(x = mtcars$wt, y=fitq$residuals, xend = mtcars$wt, yend = y0))

g2 <- ggplot(mtcars, aes(x = qsec, y = fitw$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + 
  geom_line(y=0) + geom_segment(aes(x = mtcars$qsec, y=fitw$residuals, xend = mtcars$qsec, yend = y0))

g3 <- ggplot(mtcars, aes(x = hp, y = fith$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + 
  geom_line(y=0) + geom_segment(aes(x = mtcars$hp, y=fith$residuals, xend = mtcars$hp, yend = y0))

g4 <- ggplot(mtcars, aes(x = disp, y = fitd$residuals, colour = am)) + 
  geom_point(aes(size=2)) + scale_size(guide = 'none') + 
  geom_line(y=0) + geom_segment(aes(x = mtcars$disp, y=fitd$residuals, xend = mtcars$disp, yend = y0))

grid.arrange(g1, g2, g3, g4, ncol=2, nrow=2)