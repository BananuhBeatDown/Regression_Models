mtcars31 <- mtcars[-9, ]

fitlog <- glm(am ~ qsec, family='binomial', mtcars31)
fitpos <- glm(mpg ~ am + qsec, family='poisson', mtcars31)

g <- ggplot(mtcars31, aes(x = qsec, y = fitpos$residuals, color = am)) + 
  geom_point() + geom_line(y=0) + geom_smooth(method=poisson)
g
