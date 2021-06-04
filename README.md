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




