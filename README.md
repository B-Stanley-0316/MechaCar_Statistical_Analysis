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
1. The most significant variables in the dataset that show a non-random effect on the MPG of the MecaCar are the **Vehicle Length** amd the **Ground Clearance**. The Vehicle Length's p-value is 2.60x10<sup>-12</sup> and the Ground Clearance's p-value is 5.21x10<sup>-8</sup>. The Intercept is also statistically significant. 

2. The slope of the linear model is not considered to be zero. The p-value of the linear model was much smaller than the significannt level which provides enough statistical evidence that the null hypothesis is **not** true.

3. The R-squared value is 0.715, which is **71.5%**, this shows that there is a 71.5% chance future data will fit these data points and therefore, this prediction is effective.


### Summary Statistics on Suspension Coils

Total Summary Statistics of the `Suspension_Coil.csv` data set.

![Summary](Resources/Total_Summary.png)

Summary Statistics of the `Suspension_Coil.csv` data set by Lot Number.

![Lot_Summary](Resources/Lot_Summary.png)


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


### T-Tests on Suspension Coils

Summary


### Study Design: MechaCar vs Competition
What metric or metrics are you going to test?

What is the null hypothesis or alternative hypothesis?

What statistical test would you use to test the hypothesis? And why?

What data is needed to run the statistical test?
