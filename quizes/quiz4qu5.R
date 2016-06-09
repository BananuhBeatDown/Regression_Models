t <- sample(1, 72)
two <- log(10) + t
fit1 <- glm(count ~ spray + offset(t), family="poisson", InsectSprays)
fit2 <- glm(count ~ spray + offset(two * t), family="poisson", InsectSprays)
summary(fit1)
summary(fit2)