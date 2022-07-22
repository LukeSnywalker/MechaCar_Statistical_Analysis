# Deliverable 1

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
mpg_data <- read.csv('MechaCar_mpg.csv')

#5. Perform linear regression using the lm() function. In the lm() function,
# pass in all six variables (i.e. columns), and add the dataframe you created in Step 4 as the data parameter.
mpg_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)

#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(mpg_regression)

# Deliverable 2

#2. Import and read in the Suspension_Coil.csv file as a table.
suspension_table <- read.csv('Suspension_Coil.csv')
  
#3. Write an RScript that creates a total_summary dataframe using the summarize() function
# to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
total_summary <- suspension_table %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI))
total_summary
  
# 4. Write an RScript that creates a lot_summary dataframe 
# using the group_by() and the summarize() functions to group each manufacturing lot 
# by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI), .groups='keep')
lot_summary

# Deliverable 3

# 1. Write an RScript using the t.test() function to determine if
# the PSI across all manufacturing lots is statistically different
# from the population mean of 1,500 pounds per square inch.
t.test(suspension_table$PSI, mu=1500)

# 2. Write three more RScripts using the t.test() function and its subset() argument
# to determine if the PSI for each manufacturing lot is statistically different
# from the population mean of 1,500 pounds per square inch.

t.test(PSI ~ 1, mu=1500, data=suspension_table, subset=Manufacturing_Lot=="Lot1")
t.test(PSI ~ 1, mu=1500, data=suspension_table, subset=Manufacturing_Lot=="Lot2")
t.test(PSI ~ 1, mu=1500, data=suspension_table, subset=Manufacturing_Lot=="Lot3")