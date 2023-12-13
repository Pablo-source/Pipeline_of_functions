# 02_model.R
library(here)
library(tidyverse)

# Load .csv file from objects folder in R

path_in <- here("objects","dataset.csv")
dataset <- read_csv(path_in, col_names = TRUE, col_types=  cols())

head(dataset)
names(dataset)

fit <- lm(Ozone ~ Wind + Temp, dataset)
fit 

# Then we save the output of this analysis again in the objects folder

path_out <- here("objects","fit.rds")
saveRDS(fit,path_out)