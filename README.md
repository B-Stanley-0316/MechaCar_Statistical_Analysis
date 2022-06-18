# MechaCar Statistical Analysis

## Overview
AutosRUs is requiring the analytics team to review the production data for insights that may help the manufacturing team. 

The following are the tasks requested of the analytics team:
1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Results
### Linear Regression to Predict MPG

Linear Regession on the `MechaCar_mpg.csv` data set.

![Linear_Regression](Resources/Linear_Regression.png)


Summary Function used to obtain the p-value and r-squared value for the Linear Regression model.

![Summary](Resources/Summary.png)

#### Conclusions
1. The most significant variables in the dataset that show a non-random effect on the MPG of the MecaCar are the **Vehicle Length** and the **Ground Clearance**. The Vehicle Length's p-value is 2.60x10<sup>-12</sup> and the Ground Clearance's p-value is 5.21x10<sup>-8</sup>. The Intercept is also statistically significant. 

2. The slope of the linear model is not considered to be zero. The p-value of the linear model was much smaller than the significannt level which provides enough statistical evidence that the null hypothesis is **not** true.

3. The R-squared value is 0.715, which is **71.5%**, this shows that there is a 71.5% chance future data will fit these data points and therefore, this prediction is effective.


### Summary Statistics on Suspension Coils

#### Total Summary Statistics of the `Suspension_Coil.csv` data set.

![Summary](Resources/Total_Summary.png)

#### Summary Statistics of the `Suspension_Coil.csv` data set by Lot Number.

![Lot_Summary](Resources/Lot_Summary.png)

Conclusion: The total summary statistics model shows the variance to be 62.30 PSI, this is below the 100 PSI threshold, however when the statistics are pulled by lot, Lot 3's variance is 170.29 PSI which is over the 100 PSI limit.


### T-Tests on Suspension Coils

#### T-Test performed on all Manufacturing Lots.

![T_Test_All](Resources/T_Test_One.png)


#### T-Test performed for Lot 1, Lot 2, and Lot 3.

![T_Test_Lots](Resources/T_Test_Subset.png)

##### Conclusions:
1. The p-value in the T-Test performed on all the lots together is 0.060 which is higher than the 0.05 common significance level, therefore we **cannot** reject the null hypothesis.
2. The p-value of Lot 1 (p = 1) and Lot 2 (p = 0.607) proves there is not enough evidence to reject the null hypothesis because the sample mean and the population mean are not statistically different. 
3. Lot 3's P-value is 0.042 which is below the 0.05 common significance level, therefore we **can** reject the null hypothesis.


### Study Design: MechaCar vs Competition
AutosRUs could benenfit in another Study Design where they compare a commonly sought after attribute of a buyer's prospect car compared with the competition. Since miles per gallon (MPG) was already studied previously, another metric that could be used is maintenance cost.

#### Metrics Used
The metrics that would be used would be the cost of regular maintenance, also the cost of occasional maintenance (such as transmission, brakes, etc.). 
For example, AutosRUs could make their MechaCar competitive by looking at competitor vehicle's service records of how soon service for brakes, oil changes, or transmission is required. Different cars take different amounts of oil and can vary on how long it takes for the brake pads to wear down. If these factors somehow would last longer on the MechaCar, then maintenance can be needed **less often**.

#### Null Hypothesis and Alternative Hypothesis

**Null Hypothesis**: The MechaCar and other competitive car models have a similar cost in regular maintenance and occasional maintenace situations.

**Alternative Hypothesis**: The MechaCar is a more cost effective choice when regular and occasional maintenance is required over other competitive car models.

#### Statistical Tests Used
Data Needed to run tests:
1. ANOVA Test to compare the data
2. ggplot2 to visually show the comparison of different maintenance data numbers for each vehicle
3. Linear Regession to show what maintenance situations would affect the cost the most.

#### Data Needed
1. How much oil is needed for the MechaCar and the competitor's cars, is it synthetic or regular?
2. What is the typical timeframe how long the MechaCar can run with the current brakes before needing replacing?
3. Is the transmission serviceable? Are there special places that can only touch the transmission if something were to happen?

