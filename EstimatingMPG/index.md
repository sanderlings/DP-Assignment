---
title       : Estimating MPG
subtitle    : Developing Data Products Assignment
author      : Joanna Chan
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---
## Introduction
Estimating MPG using dataset 'mtcars' from R library. 
This dataset comprises fuel consumption of 32 cars based on 10 factors.

A step-wise approach was used to identify the significant 
factors affecting MPG. The identified significant factors are:

1. Number of cylinder
2. Horsepower
3. Weight

---
## Modeling
The multivariate linear model below shows the coefficients of 
the significant factors:

```r
fit <- lm (mpg ~ cyl+hp+wt, data = mtcars)
fit
```

```
## 
## Call:
## lm(formula = mpg ~ cyl + hp + wt, data = mtcars)
## 
## Coefficients:
## (Intercept)          cyl           hp           wt  
##    38.75179     -0.94162     -0.01804     -3.16697
```

---
## Analyzing residuals

```r
par(mfrow = c(1, 4))
plot(fit)
```

![plot of chunk plot](assets/fig/plot-1.png) 

---
## Making predictions
Let's try a 6-cylinder vehicle with average horsepower and weight:

```r
v1 <- data.frame(cyl=c(6), hp=c(146.7), wt=c(3.217)); ans <- predict(fit, newdata=v1); ans[[1]]
```

[1] 20.26774

Then, a 4-cylinder vehicle with mininal horsepower and weight:

```r
v2 <- data.frame(cyl=c(4), hp=c(52), wt=c(1.513)); ans <- predict(fit, newdata=v2); ans[[1]]
```

[1] 29.25571

Finally, a 8-cylinder vehicle with maximun horsepower and weight:

```r
v3 <- data.frame(cyl=c(8), hp=c(335), wt=c(5.424)); ans <- predict(fit, newdata=v3); ans[[1]]
```

[1] 7.998427
