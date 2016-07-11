# need to use "interval=confidence" in the predict function

fit <- lm(mpg ~ wt, mtcars)

meanwt = data.frame(wt = mean(mtcars$wt))

predict(fit, meanwt, interval="confidence")