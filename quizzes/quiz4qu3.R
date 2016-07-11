#create new binary column in shuttle data representing the 'use' column
shuttle$usebin <- as.numeric(shuttle$use == 'auto')
fit1 <- glm(usebin ~ wind - 1, family=binomial(link = 'logit'), shuttle)
fit2 <- glm(I(1- usebin) ~  wind - 1, family='binomial', shuttle)
summary(fit1)
summary(fit2)