fit <- lm(mpg ~ wt, mtcars)

#Some constant
c <- 5

# I need to find out what the "I()" function does exactly
fit2 <- lm(mpg ~ I(wt + c), mtcars)

# finding the slope and coefficients for the two equations
beta0 <- c(fit$coefficients[1], fit2$coefficients[1])
beta1 <- c(fit$coefficients[2], fit2$coefficients[2])
beta0; beta1

# We find that the slope is the same, but that the intercept changed.
# Next we find that:
all.equal(beta0[2], beta0[1] - c * beta1[1])
