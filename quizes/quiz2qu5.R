# need to use "interval=prediction" in the predict function

fit <- lm(mpg ~ wt, mtcars)

newcar = data.frame(wt=3)

predict(fit, newcar, interval="prediction")