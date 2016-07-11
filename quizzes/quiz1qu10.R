x <- c(0.8, 0.47, 0.51, 0.73, 0.36, 0.58, 0.57, 0.85, 0.44, 0.42)
y <- c(1.39, 0.72, 1.55, 0.48, 1.19, -1.59, 1.23, -0.65, 1.49, 0.05)

# alternate solution
# beta <- cor(x,y) * sd(y) / sd(x)
# alpha <- cor(x,y) * sd(x) / sd(y)
# beta / alpha

lm(y ~ x)$coef[2] / lm(x ~ y)$coef[2]

var(y) / var(x)