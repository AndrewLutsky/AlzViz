episodes <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-08-08/episodes.csv')
sauces <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-08-08/sauces.csv')
seasons <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2023/2023-08-08/seasons.csv')
sauces <- sauces[ , -3]

sauceS1 <- sauces[1:10, ]
install.packages("tidyverse")
library(tidyverse)
ggplot(data = sauceS1, mapping = aes(x = sauce_number, y = scoville, color = sauce_number)) +
  geom_bar(stat = "identity") +
  scale_color_brewer(palette = "PuRd")