# Deliverable 1
#3. install dplyr library
library(dplyr)
library(tidyverse)

#4. Read in data as a dataframe
mpg_df <- read.csv("Resources/MechaCar_mpg.csv")

#5. Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mpg_df)

#6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mpg_df))

# Deliverable 2
#2. Read in the suspension coil csv as a dataframe
suspension_df <- read.csv("Resources/Suspension_Coil.csv")

#3. Create a summary table dataframe
total_summary <- suspension_df %>% summarize(Mean_PSI=mean(PSI),
                                            Median_PSI=median(PSI),
                                            Var_PSI=var(PSI),
                                            Std_Dev_PSI=sd(PSI),
                                            Num_Coil=n(), .groups = 'keep')

#4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.                                                                
lot_summary <- suspension_df  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')

# Deliverable 3

#1. use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(suspension_df$PSI,mu=1500)

#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(suspension_df, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_df, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_df, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)