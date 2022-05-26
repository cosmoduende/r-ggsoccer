
# INSTALL AND LOAD LIBRARY

install.packages("ggsoccer")
library(ggsoccer)

# BLANK SOCCER PITCH

ggplot() +
  annotate_pitch() +
  theme_pitch()

# SOCCER PITCH COLOR

ggplot() +
  annotate_pitch(fill = "#1b893e", colour = "white") +
  theme_pitch() +
  theme(panel.background = element_rect(fill = "#186d33")) 

# SHOT MAP

set.seed(1)
dataFrame <- data.frame(x = rnorm(10, 85, 10), 
                 y = rnorm(10, 55, 20),
                 Shots = sample(c("IN", "OUT"),
                               40, replace = TRUE))

ggplot(dataFrame) +
  annotate_pitch(fill = "#1b893e", colour = "white") +
  geom_point(aes(x = x, y = y, fill = Shots), shape = 21, size = 7) +
  coord_cartesian(xlim = c(40, 100))+ 
  theme_pitch() +
  theme(panel.background = element_rect(fill = "#186d33")) 

# PASSING MAP

passing <- data.frame(x1 = c(50, 0, 18, 50, 63, 66),
                   x2 = c(20, 13, 47, 55, 68, 78),
                   y1 = c(80, 39, 62, 37, 18, 70),
                   y2 = c(90, 63, 37, 20, 68, 90))

ggplot(passing) +
  annotate_pitch(fill = "#1b893e", colour = "white") +
  geom_segment(aes(x = x1, y = y1, xend = x2, yend = y2), colour = "blue",
               arrow = arrow(length = unit(0.6, "cm"), type = "closed")) +
  theme_pitch() +
  theme(panel.background = element_rect(fill = "#186d33")) 

# SOCCER PITCH DIMENSIONS

dimension <- list(length = 150, width = 60, penalty_box_length = 20,
  penalty_box_width = 40, six_yard_box_length = 3, six_yard_box_width = 12,
  penalty_spot_distance = 6, goal_width = 8, origin_x = 0, origin_y = 0)

ggplot() +
  annotate_pitch(dimension = dimension, fill = "#13576c", colour = "white") +
  theme_pitch() +
  theme(panel.background = element_rect(fill = "#1f86a5")) 






