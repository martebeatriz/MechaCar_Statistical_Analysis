# MechaCar_Statistical_Analysis

Using R, we designed a linear model that predicts the mpg of MechaCar prototypes using several variables from a MechaCar_mpg.csv file. Then, I wrote a short interpretation of the multiple linear regression results. 

We also collected summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots. We ran t-tests to determine if the manufacturing lots are statistically different from the mean population. 

I designed a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 


## Linear Regression to Predict MPG

![MechaCar_linear_regression_model](https://user-images.githubusercontent.com/107375554/193476124-c56c3b32-9cee-4747-afa5-e2a68860a7f0.png)

![MechaCar_linear_regression_summary](https://user-images.githubusercontent.com/107375554/193476089-1416c2b4-76f0-4384-b503-baf755a0d409.jpeg)

Vehicle length and ground clearance variables provided the most non-random amount of variance to mpg values in the dataset. 

The p-value is 5.35e-11 which is much less than 0.05%. This is sufficient evidence to reject our null hypothesis and means the the slope of out linear model is not zero.

This linear model can predict mpg of MechaCar prototypes effectively because the is evidence of a probable relationship between the mpg and vehicle length as well as mpg and ground clearance. The p-value also points to the probability of some significant linear relationship. 


## Summary Statistics on Suspension Coils
![coil_summary](https://user-images.githubusercontent.com/107375554/193476381-a1009169-b782-4f49-bc1c-f68d0a14a5b9.png)

![coils_lot_summary](https://user-images.githubusercontent.com/107375554/193476386-7e03a93a-4059-49c0-a778-dfcdb4aefe93.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. According to the current manufacturing data overall for all lots, the variance is about 62 and meets the design expectation. However, according to the data summarizing each lot individually, we find that Lot3's variance is over 170 and that does not meet design specifications. Lot1 and Lot 2 have variances of about 0.98 and 7.47 respectively and meet design specifications


## T-Tests on Suspension Coils
![t test_PSI](https://user-images.githubusercontent.com/107375554/193476388-8f97ffef-b4f7-4763-be0f-e42dc21e5ebc.png)

We performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Looking at the t-test results we conducted for all suspension coil data, we can see that the p-value is about 0.06. That is a high significance level and has a statistically high probability of meeting the 1,500 mean. 

Next, we looked at each lot individually. 

![Lot1](https://user-images.githubusercontent.com/107375554/193476390-7baef236-1133-4439-be22-a9c3db88768d.png)

Lot 1 has a p-value of 1 which indicates the the mean has is statistically the same as the 1,500 pounds per square inch mean expected by the company and makes it likely that the lot is meeting expectations. 


![Lot2](https://user-images.githubusercontent.com/107375554/193476392-f99fafeb-e6d8-4378-b276-e0dbee8d01ee.png)

Lot 2 has a p-value of 0.061. That is a high significance level and has a statistically high probability of meeting the 1,500 mean. 


![Lot3](https://user-images.githubusercontent.com/107375554/193476393-6a24bd6b-59f0-422f-bbdf-78c2a38334c1.png)

Lot 3 has a p-value of 0.042. This is a low significance level and indicates that there is a low probability that Lot3's mean is different from the 1,500 mean set by the company. 


## Study Design: MechaCar vs Competition

If we were to quantify how the MechaCar performs against the competition, we can do a few things like compare cost and city fuel efficiency. 

Right now due to inflation, people are worried about the overall cost and daily cost. 

### Comparing cost:
When comparing cost, the null hypothesis would be that there is no difference in cost. The alternative hypothesis would be that there is a difference.

We would need two samples of the manufactures's cost to then use a Two-Sample t-Test to see if there a statistical difference
between the distribution means of the samples. 


### Comparing fuel efficiency:
When comparing fuel efficiency, the null hypothesis would be that there is no difference in city miles per gallon. The alternative hypothesis would be that there is a difference.

We would need two samples of the manufactures's city miles per gallon to then use a Two-Sample t-Test to see if there a statistical difference between the distribution means of the samples. 
