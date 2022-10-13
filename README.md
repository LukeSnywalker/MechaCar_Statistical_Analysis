# MechaCar Statistical Analysis

In this project, we performed statistical analyses on a fictional prototype "MechaCar" to determine how certain attributes affect the miles per gallon of the vehicle, whether the suspension coils from manufacturing lots meet design specifications, and whether suspension coils in the manufacturing lots can withstand significantly different pounds per square inch than the population mean.
 
## Linear Regression to Predict MPG

![Results of the multiple linear regression test](/images/mpg_regression.png)

The variables that provided a non-random amount of variance to the mpg values in the dataset were vehicle length, vehicle weight, and ground clearance, but vehicle length and ground clearance had the most significant contributions to the variance.

The slope of the linear model is not considered to be zero, because multiple variables provided significant variance to the mpg values.

This linear model predicts the mpg of MechaCar prototypes somewhat effectively. The multiple r-squared value is close to 1 (0.7149), indicating a positive correlation, but only a few of the variables provided a non-random amount of variance. Additionally, the intercept had a very small p-value, indicating that the vehicle length, weight, and ground clearance variables would need to be transformed or rescaled to improve the predictive power of the model.

## Summary Statistics on Suspension Coils

![PSI summary for all manufacturing lots](/images/total_summary.png)

![PSI summary for all individual lots](/images/lot_summary.png)

The current suspension coil variance meets the design specification of not exceeding 100 pounds per square inch for all manufacturing lots in total, but not each lot individually. The total variance across all lots is about 62.29, and the variances of lots 1 and 2 are about 0.98 and 7.47 respectively, but the variance for lot 3 is about 170.29, which exceeds the 100 pound specification.

## T-Tests on Suspension Coils

![t-test on PSI for all lots vs the population mean](/images/all_lots_t_test.png)

To test whether the PSI of suspension coils in all manufacturing lots were statistically different from the population mean of 1,500 PSI, we performed one-sample t-tests. In the test on all lots put together vs the population mean, the p-value is about 0.06, meaning that the two means are not statistically different. 

![t-test on PSI for lot 1 vs the population mean](/images/lot1_t_test.png)
![t-test on PSI for lot 2 vs the population mean](/images/lot2_t_test.png)
![t-test on PSI for lot 3 vs the population mean](/images/lot3_t_test.png)

When comparing the mean PSI of each lot individually to the population mean, lots 1, 2 and 3 have p-values of 1, 0.6072, and 0.04168, respectively. This means that lot 1 has a mean PSI exactly the same as the population mean (1,500), lot 2's mean PSI is not statistically different, and lot 3's mean PSI is statistically different.

## Study Design: MechaCar vs Competition

A study that can quantify how the MechaCar performs against the competition is a test of how the cost of each car can be predicted by its city and highway fuel efficiency in miles per gallon. We would perform a multiple linear regression, and our alternative hypothesis for would be that the city and highway mpg can reliably predict the cost of the vehicle. If we fail to accept the null hypothesis, we could use the results to assess whether the cost of the MechaCar accurately reflects its fuel efficiency relative to the competition. To perform the test, we would need to obtain the retail cost, city mpg, and highway mpg of each vehicle in all manufacturing lots.