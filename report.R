# report.R

# Run this script pressing "source" button
# 1-2. Source individual R sripts from R folder to create content for markdown report
library(tidyverse)
library(here)

source(here("R","01_load_data.R"))
dataset

source(here("R","02_model.R"))
fit

source(here("R","03_plot.R"))
hist

# Run this script pressing "source" button
# Then produce Markdown report pressing "Compile report" button
# to generate an HTML reoprt as output