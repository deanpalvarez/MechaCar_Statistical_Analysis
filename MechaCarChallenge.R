library(dplyr)
lot_summary <- sus_coil%>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI), .groups = 'keep')
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))

sus_coil <- read.csv(file='Suspension_Coil.csv', check.names=F,stringsAsFactors = F)

summarize_demo <- sus_coil%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Standard_Deviation=sd(PSI), .groups = 'keep')

?t.test()

t.test((sus_coil$PSI), mu=1500)

lot1 <- subset(sus_coil, Manufacturing_Lot=='Lot1') 
t.test(x=lot1$PSI, mu=1500) 

lot2 <- subset(sus_coil, Manufacturing_Lot=='Lot2') 
t.test(x=lot2$PSI, mu=1500) 

lot3 <- subset(sus_coil, Manufacturing_Lot=='Lot3') 
t.test(x=lot3$PSI, mu=1500) 

