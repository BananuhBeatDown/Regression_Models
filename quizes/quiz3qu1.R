fit <- lm(mpg ~ (cyl==4) + (cyl==8) + wt, mtcars)
summary(fit)
fit$coefficients[3] - fit$coefficients[2]
# You must take the positive value of the 4cyl gains
# from the negative values of the 8cyl defeceits to get
# overll mpg loss

# can also be solved:
# fit <- lm(mpg ~ factor(cyl) + wt, mtcars)
# summary(fit)
# look at cyl == 8TRUE Estimate (-6.0709)