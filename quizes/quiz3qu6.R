# Give the hat diagonal for the most influential point
# use dfbeatas(), NOT dfbeta()

x <- c(0.586, 0.166, -0.042, -0.614, 11.72)
y <- c(0.549, -0.026, -0.127, -0.751, 1.344)
fit <- lm(y ~ x)
dfbetas(fit)
cbind(dfbetas(fit), dfbeta(fit))