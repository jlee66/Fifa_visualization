library(readr)
library(ggplot2) 
library(ggthemes)


fifa <- read_csv("C:/Users/jlee66/Downloads/Fifa.csv")
View(fifa)

clean_fifa <- na.omit(fifa)

View(clean_fifa)


ggplot(data = clean_fifa, aes(x = Age, y = Rating,label = Name)) +
  geom_jitter(height = 1, width = 1, alpha = 0.6) + ylim(80, 100) + xlim(20, 40) +
  ggtitle("Players Rating in Fifa 2017 versus Age") +
  labs(x = "Age of the Players", y = "Player's Rating (out of 100)", subtitle = "Top Rated Players in Fifa 2017 (Rating > 88)") +
  geom_text(aes(label=ifelse(Rating>88,as.character(Name),'')),check_overlap = TRUE, size = 4, color = "red", angle = 45, hjust=0) +
  theme_wsj()

