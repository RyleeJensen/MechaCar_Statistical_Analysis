# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
In the screenshot below, we can see the outcome of creating a linear regression model in order to predict the MPG on a new prototype.

![LinearRegression](https://github.com/RyleeJensen/MechaCar_Statistical_Analysis/blob/main/Images/Linear_Regression.png)

We can see that the p-value of Vehicle Length is 2.60e-12 and the p-value of Ground Clearance is 5.21e-08. According to these results, both Vehicle Length and Ground Clearance are unlikely to provide random amounts of variance to the linear model. Or in other words, both of these variables seem to have a significant impact on the MPG of the new prototype.

Next, we see that that the p-value of our linear regression analysis is 5.35e-11. Compared to our assumed significance level of 0.05%, the p-value we calculated is much smaller. Therefore, we can conclude that the slope of our linear model is not zero.

Using this linear model, we can conclude that the MPG of MechaCar prototypes are dependent on both Vehicle Length and Ground Clearance. These two variables will have a significant impact on the the MPG of a vehicle based off the p-values. The other three variables do not seem have a significant impact on MPG.

## Summary Statistics on Suspension Coils
In the first image below (left), we can see first the total summary of the mean, median, variance, and standard deviation of the suspension coil's PSI. The next image (right) also shows this information, but it is broken down by each manufacturing lot.

![TotalSummary](https://github.com/RyleeJensen/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)
![LotSummary](https://github.com/RyleeJensen/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.png)

The design specifications state that the variance of the suspension coils must not exceed 100 pounds per square inch. When we look at the total summary table, we see that variance of the suspension coil's PSI for all vehicles averages out to be 62.29. Which means that the current manufacturing data meets the design specifications. However, when we look at each lot individually, we can see that manufacturing lot 3 has a PSI variance of 170.29. Lots 1 and 2 both meet the desing specifications, but lot 3 does not however. It would be a good idea to take a closer look at lot 3 to see why the PSI variance is so much higher than the other two lots.

## T-Tests on Suspension Coils
This first one sample t-test is to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch. Assuming our significance level is the common 0.05%, and we see that the p-value is 0.06 (higher than the significance level), we would state that the two means are statistically similar. This also means that we do not have sufficient evidence to reject the null hypothesis.

![T-Test1](https://github.com/RyleeJensen/MechaCar_Statistical_Analysis/blob/main/Images/T_Test1.png)

The next three t-tests are to determine if the PSI for all three manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch. Looking at manufacturing lot 1, the p-value is 1.00, which shows the mean is statistically similar to the population mean and we cannot reject the null hypothesis.

![T-Test2](https://github.com/RyleeJensen/MechaCar_Statistical_Analysis/blob/main/Images/T_Test2.png)

Manufacturing lot 2 shows a p-value of 0.61. This is not low enough to reject the null hypothesis and shows the two means are statistically similar.

![T-Test3](https://github.com/RyleeJensen/MechaCar_Statistical_Analysis/blob/main/Images/T_Test3.png)

Manufacturing lot 3 shows a p-value of 0.04. This value is low enough for us to reject the null hypothesis and shows that the two means are slightly statistically different.

## Study Design: MechaCar vs Competition
When it comes to buying a car, there are many different aspects that people look at before deciding which one to purchase. In this day and age, it seems to become increasingly more popular to buy a vehicle in which people can live out of and travel around safely. Cars are no longer just for getting to work and going to the grocery store, they need to have the space and capacity to sleep in them when people go on long car trips. Our question for this analysis is: Does the carrying capacity of a vehicle effect the sales of the vehicle?

### Metrics to Test:
  - Carrying Capacity (cubic feet)
  - Sales of Vehicle

### Null and Alternative Hypothesis:
  - Null: MechaCar prototype vehicles' carrying capacity does effect the sales of the vehicle.
  - Alternative: MechaCar prototype vehicles' average carrying capacity and sales does not effect the sales of the vehicle.

### Statistical Test:
  - A linear regression model would be used to determine whether or not the carrying capacity of a vehicle effects how well the car sells. Being able to determine the Pearson correlation coefficient will give us a good idea as to whether or not there is a relationship between the two variables.

### Data Needed:
  - We need to make sure both the sales data and carrying capacity data is numerical and continuous.
  - The data needs to follow a linear pattern.
  - Our independent variable (carrying capacity) needs to have more than one observation.
    - We need to gather information about carrying capacity from more than just one type of vehicle in order to get an accurate analysis.
