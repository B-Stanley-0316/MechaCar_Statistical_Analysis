library(dplr)

# Linear Regression to Predict MPG
# Read CSV to dataframe
mechacar_mpg_df <-  read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechacar_mpg_df)

# linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)
#find p-value and r-squared
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df))

# Suspension Coil Lot Analysis
# Read CSV to dataframe
suspension_coil_df <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil_df)
# Create Summary Dataframe
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
#Create Summary for Each Lot
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# T-Tests on Suspension Coils
t.test(suspension_coil_df$PSI, mu=1500)

#Subset
t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(suspension_coil_df, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
