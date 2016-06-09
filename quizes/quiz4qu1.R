fit <- glm(use ~ factor(wind), family=binomial(link = 'logit'), shuttle)
eco <- data.frame(exp(coefficients(fit)))
# cross-tabulation, Create a contingency table (optionally a sparse matrix)
# from cross-classifying factors, usually contained in a data frame,
# using a formula interface.
p <- xtabs(~ use + wind, shuttle)
# manually calculating the odds ratio, then comparing to
# what was calculated in the eco[2,1] 
or <- (p[1, 1] / p[2, 1]) / ( p[1, 2] / p[2, 2] )
all.equal(eco[2, 1], or)