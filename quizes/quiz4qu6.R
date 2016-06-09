x <- -5:5
y <- c(5.12, 3.93, 2.67, 1.87, 0.52, 0.08, 0.93, 2.05, 2.54, 3.87, 4.97)
fit <- lm(y ~ xMat - 1)
knots <- 0
splineTerms <- sapply(knots, function(knot) (x > knot) * (x - knot))
xMat <- cbind(1, x, splineTerms)
yhat <- predict(fit)
plot(x, y, frame = FALSE, pch=21, bg="lightblue", cex=2)
lines(x, yhat, col="red", lwd=2)
summary(fit)