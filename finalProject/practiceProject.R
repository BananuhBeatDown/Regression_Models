library(GGally)
library(ggplot2)
library(data.table)
data(mtcars)
setcolorder(mtcars, c(1, 6, 9, 7, 4, 3, 2, 5, 8, 10, 11))
fit <- lm(mpg ~ ., mtcars)
summary(fit)
summary(aov(mpg ~ ., mtcars))

# Function to return points and geom_smooth
# allow for the method to be changed
my_fn <- function(data, mapping, method="loess", ...){
  p <- ggplot(data = data, mapping = mapping) + 
    geom_point() + 
    geom_smooth(method=method, ...)
  p
}

# Default loess curve    
# ggpairs(swiss[1:4], lower = list(continuous = my_fn))

# Use wrap to add further arguments; change method to lm
ggpairs(mtcars[1:11], lower = list(continuous = wrap(my_fn, method="lm")))


# my_fn <- function(data, mapping, pts=list(), smt=list(), ...){
#   ggplot(data = data, mapping = mapping, ...) + 
#     do.call(geom_point, pts) +
#     do.call(geom_smooth, smt) 
# }
# 
# # Plot 
# ggpairs(swiss[1:4], 
#         lower = list(continuous = 
#                        wrap(my_fn,
#                             pts=list(size=2, colour="red"), 
#                             smt=list(method="lm", se=F, size=5, colour="blue"))))

summary(fit)