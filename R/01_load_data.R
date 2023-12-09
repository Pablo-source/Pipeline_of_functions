# 01_load_data

# Project: Moving from a sequence of scripts to a pipelie of functions
# First script to load data.

library(tidyverse)
library(here)
library(janitor)

# 1. Read in data
# 1.1 Define input data

path_in <- here("data","raw_data.csv")
raw_data <-read_csv(path_in, col_names = TRUE)

dataset <- raw_data %>% 
  mutate(Ozone = replace_na(Ozone, mean(Ozone, na.rm = TRUE)))
dataset
names(dataset)

# 2. Define output folder (we will ue it for the entire project)
if(!dir.exists("objects")){dir.create("objects")}

path_out <- here("objects","dataset.csv")
write_csv(dataset, path_out)

# Then by cllicking on the "Source" button we should see the new .csv file we have 
# created called "dataset.csv" in the newly created objects folder.


