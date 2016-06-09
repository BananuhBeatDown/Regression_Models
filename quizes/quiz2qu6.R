data(mtcars)
wt2 <- mtcars$wt/2
fit <- lm(mpg ~ wt2, mtcars)
coef <- summary(fit)$coef

# coef estimate minus t-dist @ .975 confidence * stderror of coef estimate
coef[2,1] + c(-1, 1) * qt(.975, df = fit$df) * coef[2,2]
summary(fit)