## DELIVERALBE 1-------

# 3 Use the library() function to load the dplyr package.
library(dplyr)

# 4 Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha_car_mpg <- read.csv(file='MechaCar_mpg.csv',check.names = F, stringsAsFactors = F)

# 5 Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_car_mpg))
# p-value: 5.35e-11
# r-squared: 0.6825

## CALL BACK RESPONSE FOR STEP #5
## lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
## ground_clearance + AWD, data = mecha_car_mpg)

#Residuals:
# Min       1Q   Median       3Q      Max 
# -19.4701  -4.4994  -0.0692   5.4433  18.5849 

# Coefficients:
# Estimate Std. Error t value Pr(>|t|)    
# (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
# vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
# vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
# spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
# ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
# AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Residual standard error: 8.774 on 44 degrees of freedom
# Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
# F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

# 6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.


## DELIVERABLE 2------

# Import the data
sus_coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))



## DELIVERABLE 3-------

# Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(sus_coil$PSI, mu = 1500)

## ANSWER FOR ABOVE: One Sample t-test

# data:  sus_coil$PSI
# t = -1.8931, df = 149, p-value = 0.06028
# alternative hypothesis: true mean is not equal to 1500
# 95 percent confidence interval:
#  1497.507 1500.053
#sample estimates:
#  mean of x 
# 1498.78 

# Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
Lot1 = subset(sus_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(sus_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(sus_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168
