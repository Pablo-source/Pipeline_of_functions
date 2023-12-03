# 02_model.R

library(bigml)
library(tidyverse)

# Load .csv file from objects folder in R

path_in <- here("objects","dataset.csv")
dataset <- read_csv(path_in, col_names = TRUE, col_types=  cols())

head(dataset)

