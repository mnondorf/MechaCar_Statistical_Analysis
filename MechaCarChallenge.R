library(dplyr)
MechaCars_df <- read.csv(file = "MechaCar_mpg.csv", header = TRUE)
lr_model =lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCars_df)
summary(lr_model)