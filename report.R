# report.R

library(tidyverse)
library(here)

source(here("R","01_load_data.R"))
dataset

source(here("R","02_model.R"))
fit

source(here("R","03_plot.R"))
hist

# 1.Run this script pressing "source" button
# 2.Then produce Markdown report pressing "Compile report" button
# to generate an HTML reoprt as output