fit <- glm(I(count) ~ factor(spray) - 1, family="poisson", InsectSprays)
# We obtain at the incidence rate ratio by exponentiating the
# Poisson regression coefficient
sa <- exp(fit$coefficients[1])
sb <- exp(fit$coefficients[2])
sa/sb
# plot(InsectSprays$spray, InsectSprays$count, pch=19, xlab='spray', ylab='count')