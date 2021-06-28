# MechaCar_Statistical_Analysis/ Module 15: Statistics and R 


## Overview
In this challenge, we utilized Statistics and R to perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes. We also had to collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, run t-tests to determine if the manufacturing lots are statistically different from the mean population, and finally design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.


# DELIVERALBE 1: Linear Regression to Predict MPG
Screen Shot 2021-06-27 at 11.46.29 PM<img width="582" alt="Screen Shot 2021-06-27 at 11 46 29 PM" src="https://user-images.githubusercontent.com/80291340/123593402-5162c280-d7a3-11eb-974a-8c57a1a4338f.png">

## - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Variance of a non-random variable is usually 0---vehicle weight, spoiler_angle & AWD provided a non-random amount of variance. The two variables that had the most amount of random variance are ground_clearance and vehicle_length.

## - Is the slope of the linear model considered to be zero? Why or why not?
By the p-value, it seems that the slope is not zero---it is less than 0.05. With a significance level of 0.05 ---we reject the null hypothesis because of the extremely small p-value. The null hypothesis of a linear regression states that the slope is equal to 0. Howver, rejecting the null hypthesis, we're stating that alternative hypothesis is true---proving that the slope is not 0. 

## - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Our R-squared value is 71%, which means that about 70% of the time the model will predict mpg values correctly. Which concludes that this linear model predicts the mpg of MechaCar prototypes relatively well.

# DELIVERALBE 2: Summary Statistics on Suspension Coils
Screen Shot 2021-06-27 at 11.45.57 PM<img width="376" alt="Screen Shot 2021-06-27 at 11 45 57 PM" src="https://user-images.githubusercontent.com/80291340/123595486-d0f19100-d7a5-11eb-98f9-30ee15fbe2df.png">

Screen Shot 2021-06-27 at 11.45.16 PM<img width="545" alt="Screen Shot 2021-06-27 at 11 45 16 PM" src="https://user-images.githubusercontent.com/80291340/123595510-d949cc00-d7a5-11eb-9b61-e12966b3dccf.png">


## - The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Based of the calculations, Lot 1 and Lot 2 are both within design specifications and have similar means and medians. Lot 3 shows the most variance and exceeds the manufacturers' specifications. 


# DELIVERALBE 3: T-Tests on Suspension Coils 

Screen Shot 2021-06-27 at 11.46.47 PM<img width="460" alt="Screen Shot 2021-06-27 at 11 46 47 PM" src="https://user-images.githubusercontent.com/80291340/123596411-05198180-d7a7-11eb-9ad7-b2abfa7f6cfb.png">


Screen Shot 2021-06-27 at 11.47.00 PM<img width="461" alt="Screen Shot 2021-06-27 at 11 47 00 PM" src="https://user-images.githubusercontent.com/80291340/123596447-0ea2e980-d7a7-11eb-8271-9a3a0e0d5bc4.png">


Screen Shot 2021-06-27 at 11.47.09 PM<img width="487" alt="Screen Shot 2021-06-27 at 11 47 09 PM" src="https://user-images.githubusercontent.com/80291340/123596469-1498ca80-d7a7-11eb-8796-9dbcdb2b2e83.png">


Screen Shot 2021-06-27 at 11.47.20 PM<img width="487" alt="Screen Shot 2021-06-27 at 11 47 20 PM" src="https://user-images.githubusercontent.com/80291340/123596489-19f61500-d7a7-11eb-9bc6-64c48617cebe.png">


## - Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
Lot 1 and Lot 3 the PSI values are not different from the population mean. However lot 2 the p-value is .347 which means there is evidence that the suspension coil is different from the population mean. All t-tests can be viewed above. 


# DELIVERALBE 4: Design a Study Comparing the MechaCar to the Competition. 
The study of fuel efficiency within highway and city MPG would be a very useful analysis for clients that are interested in fuel economy. Considering today's varied types of engines---being aware of fuel economy when purchasing a new care is very good not only on our wallets, but very good for the environment. The metrics that can be analyzed are city and highway fuel economy, horsepower, type of engine (internal combustion engines or EV/ PHEV), weight of vehicle, AWD capabilities, etc. 
