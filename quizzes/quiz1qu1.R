x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
df = data.frame(x)
lm(x ~ 1, df, weights=w)

#weighted.mean(x, w)