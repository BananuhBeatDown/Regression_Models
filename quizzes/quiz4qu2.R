#create new binary column in shuttle data representing the 'use' column
# shuttle$usebin <- as.numeric(shuttle$use == 'auto')
fit <- glm(use ~ factor(wind) + factor(magn) - 1, family=binomial(link = 'logit'), shuttle)
eco <- data.frame(exp(coefficients(fit)))
eco[2, 1] / eco[1, 1]