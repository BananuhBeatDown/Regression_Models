fit <- lm(Fertility ~ Agriculture, swiss)
fitz <- lm(Fertility ~ Agriculture + Examination, swiss)

summary(fit)
summary(fitz)

cbind(fit$coefficients[2], fitz$coefficients[2])
# It is possible for the coefficient to reverse sign after adjustment.
# For example, it can be strongly significant and positive before
# adjustment and strongly significant and negative after adjustment.