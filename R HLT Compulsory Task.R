#install.packages("tidyverse")
library(ggplot2)

data()
cars

ggplot(data = cars,
        mapping = aes(x = speed,
                      y = dist))+
  geom_point(size = 2)+
  geom_smooth(method = lm, colour = "red", se = F)+
  labs(title = "Speed  vs Stopping Distances of Cars",
       x = 'Speed(mph)',
       y = 'Distance(ft)')+
  theme_bw()

