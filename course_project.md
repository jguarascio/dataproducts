Driving Safety
========================================================
author: Joe Guarascio
date: Fri Feb 19 09:17:51 2016

Speed and Stopping Distance
========================================================
One important aspect of safe driving is knowing how much distance you need for your car to stop at various speeds.  Giving yourself the proper distance can be the difference between life and death.

Using the cars dataset in R, we will predict the stopping distance needed at various speeds based on a linear model.  

A web application will allow users to input speed and see the resulting predicted stopping distance.

Collecting the data
========================================================
The data were recorded in the 1920s.

![plot of chunk unnamed-chunk-1](course_project-figure/unnamed-chunk-1-1.png) 

Prediction
========================================================
A standard linear model based on the cars data was used for prediction:


```r
fit<-lm(dist~speed,data=cars)
fit
```

```

Call:
lm(formula = dist ~ speed, data = cars)

Coefficients:
(Intercept)        speed  
    -17.579        3.932  
```

Using the Prediction Tool
========================================================
The prediction tool can be found at the link below.  

https://jguarascio.shinyapps.io/distapp/

This tool gives the user the ability to try different speeds and see what the predicted 
stopping distance is.
