library(dplyr)
MechaCars_df <- read.csv(file = "MechaCar_mpg.csv", header = TRUE)
lr_model =lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCars_df)
summary(lr_model)

suspension <- read.csv(file ="Suspension_coil.csv", header = TRUE)
total_summary <- suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot1 <- subset(suspension, Manufacturing_Lot == "Lot1")
lot2 <- subset(suspension, Manufacturing_Lot == "Lot2")
lot3 <- subset(suspension, Manufacturing_Lot == "Lot3")

t.test(suspension$PSI, mu=1500)

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)