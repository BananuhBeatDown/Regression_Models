fit <- lm(mpg ~ factor(cyl) + wt, mtcars)
fit2 <- lm(mpg ~ factor(cyl) * wt, mtcars)
anova(fit, fit2, test="Chisq")
# since we have a large P-value, that is a good indicator
# to fail to reject and the interaction term is not necessary
