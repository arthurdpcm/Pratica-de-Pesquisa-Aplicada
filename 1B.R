
library(dplyr)

wine = read.csv("wine.data")

wine_grp_mean_class = wine %>% group_by(X1)  %>%
  summarise(X14.23 = mean(X14.23),
            X1.71 = mean(X1.71),
            X2.43 = mean(X2.43),
            X15.6 = mean(X15.6),
            X127 = mean(X127 ),
            X2.8 = mean(X2.8),
            X3.06 = mean(X3.06),
            X.28 = mean(X.28),
            X2.29 = mean(X2.29),
            X5.64 = mean(X5.64),
            X1.04 = mean(X1.04),
            X3.92 = mean(X3.92),
            X1065 = mean(X1065),
            
            .groups = 'drop')

wine_grp_sd_class = wine %>% group_by(X1)  %>%
  summarise(X14.23 = sd(X14.23),
            X1.71 = sd(X1.71),
            X2.43 = sd(X2.43),
            X15.6 = sd(X15.6),
            X127 = sd(X127 ),
            X2.8 = sd(X2.8),
            X3.06 = sd(X3.06),
            X.28 = sd(X.28),
            X2.29 = sd(X2.29),
            X5.64 = sd(X5.64),
            X1.04 = sd(X1.04),
            X3.92 = sd(X3.92),
            X1065 = sd(X1065),
            
            .groups = 'drop')

View(wine_grp_mean_class)     
View(wine_grp_sd_class)     