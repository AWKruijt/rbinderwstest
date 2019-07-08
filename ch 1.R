require(ggplot2)
require(readr)

full_trains <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-02-26/full_trains.csv")

ggplot(full_trains, aes(x= journey_time_avg)) + 
  geom_histogram(bins = 20, alpha = .3) + 
  labs(x = "Journey Time (mins.)", y = "Number of Instances", title = "Histogram of Average Journey Time for Trains on the SNCF Network")