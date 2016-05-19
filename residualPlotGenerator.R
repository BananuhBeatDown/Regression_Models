library(ggplot2)
library(gridExtra)

data(mtcars)

mtcars <- mtcars[-9, ]
qsec <- mtcars$qsec
mpg <- mtcars$mpg
am <- mtcars$am
hp <- mtcars$hp

y31 = as.numeric(rep(0,31))

residPlot <- function(data, predictor, outcome, fac) {
  y0 <- as.numeric(rep(0, length(outcome)))
  fit = lm(outcome ~ predictor, data)
  resids = fit$residuals
  g <- ggplot(data, aes(x=predictor, y=resids, colour=fac)) + 
    geom_point(aes(size=2)) + scale_size(guide='none') + geom_line(y=0) + 
    geom_segment(aes(x=predictor, y=resids, xend=predictor, yend=y0)) +
    labs(list(title=paste(substitute(data), substitute(predictor), ',', substitute(outcome), 'Residual Plot'), x=paste(substitute(predictor)), y="Residuals")) +
    scale_color_continuous(name=paste(substitute(fac)))
  
  return(g)
}

residPlot(mtcars, qsec, mpg, am)