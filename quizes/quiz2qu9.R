fit_num <- lm(mpg ~ wt, data=mtcars)
fit_denom <- lm(mpg ~ 1, data=mtcars)
sum(resid(fit_num)^2) / sum(resid(fit_denom)^2)