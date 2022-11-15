# MechaCar_Statistical_Analysis-

## Overview of Project
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverable 1
### Linear Regression to Predict MPG

The `MechaCar_mpg.csv` dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the `MechaCar_mpg.csv file`.

#### Resulting Model:

![linear_regression.png](/Resources/linear_regression.png)
*Image 1: Linear regression model predicting MPG*

From the above output we can see that:

1. The **vehicle length**, and **vehicle ground clearance** are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely,
the **vehicle weight**, **spoiler angle**, and **All Wheel Drive** (AWD) have p-Values that indicate a random amount of variance with the dataset.  

2. The p-Value for this model, ```p-Value: 5.35e-11```, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to **reject our null hypothesis**, which further indcates that the slope of this linear model is **not zero**.


3.  This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, the multiple regression model **does predict mpg of MechaCar prototypes effectively**. 

## Deliverable 2
### Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:

*The suspension coil’s PSI continuous variable across all manufacturing lots<br>
*The following PSI metrics for each lot: mean, median, variance, and standard deviation.

#### Resulting Models:

![total_summary.png](/Resources/total_summary.png)<br>
*Image 2: This model looks at all of the manufacturing lots as a whole*
<br>
<br>
![lot_summary.png](/Resources/lot_summary.png)<br>
*Image 3: This model looks at lots individually*

The understanding for this model is that the design specifications for the MechaCar suspension coils mandate that the variance cannot exceed 100 pounds per square inch. Looking at the total summary (Image 2), the suspension coils are well within this range at 62.293 pounds per square inch. However, looking at the individual models (Image 3), Lot 1 and Lot 2 have low variance and the variance for Lot 3 is much higher, 170.286, exceeding the specified mandate. Lot 3 is disproportionately causing the total lot variance to be higher and the vehicles for Lot 3 should be reevaluated due to potential safety hazard.

## Deliverable 3:  
### t-Tests on Suspension Coils

Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Conduct a t-test on the suspension coil data to determine whether there is a statistical difference between the mean of this provided sample dataset and a hypothesized, potential population dataset. Using the presumed population mean of 1500, we find the following:

![ttest_all_lots.png](/Resources/ttest_all_lots.png)
<br>*Image 4: T-test results across all lots*

From here we can see the true mean of the sample is 1498.78, which we also saw in the summary statistics above. With a p-Value of 0.06, which is higher than the common significance level of 0.05, there is NOT enough evidence to support rejecting the null hypothesis. That is to say, the mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500.

![lot_1_ttest.png](/Resources/lot_1_ttest.png)
<br>*Image 5: T-test results for lot 1*

Lot 1 has a true sample of 1500 and a p-value of 1. Clearly, we cannot reject the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).

![lot_2_ttest.png](/Resources/lot_2_ttest.png)
<br>*Image 6: T-test results for Lot 2*

Lot 2 also has a sample mean of 1500 and has a p-value of 0.6072; the null hypothesis cannot be rejected. 

![lot_3_ttest.png](/Resources/lot_3_ttest.png)
<br>*Image 7: T-test results for Lot 3*

Here the sample mean is 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05. All indicating to reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.

## Deliverable 4:
### Study Design: MechaCar vs Competition

To quantify how MechaCar performs against competition, I want to analyze metrics that are typically very important to consumers:

### Metrics:
* Safety rating
* Gas mileage
* Price

## Hypotheses
* Null Hypotheses: 
  * MechaCar and the competition have no difference between their safety ratings.
  * MechaCar and the competition have no difference between their gas mileage ratings.
  * * MechaCar and the competition have no difference between their price.
* Alternative Hypotheses: 
  * MechaCar has a higher safety rating than the competition.
  * MechaCar has a higher gas mileage rating than the competition.
  * MechaCar has a lower price than the competition.

## Statistical Testing

I would use two-tailed t-test to describe the statistical difference between the distribution from the two samples since the data type is independent and dichotomous (sample A vs. sample B). I would also use a multiple linear regression to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price. For these tests I would need extensive data sets from each car company detailing the safety ratings, gas mileage, and price for multiple car lots.
