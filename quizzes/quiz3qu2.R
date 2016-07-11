fitwt <- lm(mpg ~ factor(cyl) + wt, mtcars)
fitnwt <- lm(mpg ~ factor(cyl), mtcars)
summary(fit)
summary(fit2)
fitwt$coefficients[2:3]
fitnwt$coefficients[2:3]
