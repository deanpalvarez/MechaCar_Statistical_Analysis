# Using R/dyplyr for Statistical Analysis on Vehicle Data

## Linear Regression to Predict MPG

Below is the summary output from our dataset:

```
Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
```

Given how our p value is 5.35e-11 (0.0000000000535) which is very close to zero, it's fair to say we can reject a null hypothesis, and that our data is statistically significant. This means our intercepts are directly affected by mpg, so further analysis can be conducted.

## Summary Statistics on Suspension Coils
![data-15-total-summary-data-mean-median-variance-sd](https://user-images.githubusercontent.com/79726572/120844836-fb04ba00-c53d-11eb-9d81-194ce7464002.png)
![data-15-manufacturing-lot](https://user-images.githubusercontent.com/79726572/120844866-03f58b80-c53e-11eb-8cbf-2fae3012e880.png)
We were told the suspension coil variance for these vehicles should not exceed 100 PSI, which is quite evidently the case in lot 3. This means the 3rd lot has a significantly larger number of vehichles than the others with a PSI level different from the expected 1500.

## T-Tests on Suspension Coils
Multiple t-tests were ran for both all 3 lots as a whole, as well as each of them individually:
```
# All vehichile lots
> t.test((sus_coil$PSI), mu=1500)

	One Sample t-test

data:  (sus_coil$PSI)
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
  
 # lot 1:

> lot1 <- subset(sus_coil, Manufacturing_Lot=='Lot1') 
> t.test(x=lot1$PSI, mu=1500) 

	One Sample t-test

data:  lot1$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
     
# Lot 2:

> lot2 <- subset(sus_coil, Manufacturing_Lot=='Lot2') 
> t.test(x=lot2$PSI, mu=1500) 

	One Sample t-test

data:  lot2$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 
   
# Lot 3:

> lot3 <- subset(sus_coil, Manufacturing_Lot=='Lot3') 
> t.test(x=lot3$PSI, mu=1500) 

	One Sample t-test

data:  lot3$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14
  ```
By simply running some code in R, analyses/hypothesis' are able to be generated automatically for us. Given the amount of data, and how each p-value is close to or equal to 1, it's fair to quote the output of our R code, and that the true mean of the PSI data is not exactly 1500. This means further testing/analysis may need to be done, as it may affect quality/safety among other factors for the company.


## Study Design: MechaCar vs Competition

In order to conduct analysis to compare to the companies competition, other factors are definitley worth considering. Fuel efficiency, horse power, maintenance cost, etc. are all important, and can be analyzed with the tools we used for PSI data. Above we see how much analysis can be done soley on a series of car lots, just for PSI levels. An example could be vehicle cost in relation to mpg (which are both assumably available information) and the null hypothesis being that they aren't directly correlated. By importing a database with this information (the larger the better) accurate p values/t tests can be generated much like done in this assignment, and can be refactored to include other variables like vehicle size, year, and even PSI. Mpg in relation to cost would be relevant to analyze, as fuel efficiency is an important consideration for consumers. Analytics using R in this manner is both relevant for safety of vehicles, business strategy, and overall company profit.




