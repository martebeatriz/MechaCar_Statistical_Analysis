#import dplyr library
library(dplyr) 

#Import MechaCar_mpg.csv file 
MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data= MechaCar_mpg_df )

#determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar_mpg_df ))

#Import Suspension_Coil.csv file 
Suspension_Coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create a total_summary dataframe using the summarize() function 
#to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <-  Suspension_Coil_df  %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD= sd(PSI) )

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
#to group each manufacturing lot by the mean, median, variance, 
#and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_Coil_df  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance= var(PSI), SD= sd(PSI) )

#write an RScript using the t.test() function to determine if the PSI across all 
#manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil_df$PSI, mu=1500 )


#Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
#and its subset() argument to determine if the PSI for each manufacturing lot is statistically different 
#from the population mean of 1,500 pounds per square inch.

#Lot1
t.test(subset(Suspension_Coil_df, Manufacturing_Lot=="Lot1" )$PSI, mu=1500 )

#Lot2
t.test(subset(Suspension_Coil_df, Manufacturing_Lot=="Lot2" )$PSI, mu=1500 )

#Lot3
t.test(subset(Suspension_Coil_df, Manufacturing_Lot=="Lot3" )$PSI, mu=1500 )

