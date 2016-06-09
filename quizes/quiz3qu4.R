fit <- lm(mpg ~ I(wt * 0.5) + factor(cyl) + wt, mtcars)
fit
summary(fit)
# The estimated expected change in mpg per one ton
# increase in weight for a specific
# number of cylinders (4, 6, 8)