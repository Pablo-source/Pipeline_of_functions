# 03_plot
library(tidyverse)
library(here)

# load .csv file from objects folder into R
# read_csv from {readr}
path_in <- here("objects","dataset.csv")
dataset <- read_csv(path_in, col_names = TRUE, col_types=  cols())

# Create a histogram
head(dataset)

hist <- ggplot(dataset) + geom_histogram(aes(x = Ozone)) + theme_gray(24)
hist

# Save plot output to objects folder
path_out <- here("objects","hist.png")
ggsave(path_out,hist)

# Click on source to output plot 