library(dplyr)

MechaCar_mpg <- read_csv("Resources/MechaCar_mpg.csv")
view(MechaCar_mpg)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) #generate linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) #generate summary statistics

Suspension_Coil <- read_csv("Resources/Suspension_Coil.csv")
view(Suspension_Coil)
total_summary <- summarize(Suspension_Coil, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
view(total_summary)
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep') #create summary table
view(lot_summary)

t.test(Suspension_Coil$PSI, mu=1500) #compare PSI versus population means

#compare PSI for each manufacturing lot versus population means
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
