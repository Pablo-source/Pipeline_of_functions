# report.R

# Run this script pressing "source" button
# 1-2. Source individual R sripts from R folder to create content for markdown report
library(tidyverse)
library(here)
library(rmarkdown)

source(here("R","01_load_data.R"))
dataset

source(here("R","02_model.R"))
fit

source(here("R","03_plot.R"))
hist

# Run this script pressing "source" button
# Then produce Markdown report pressing "Compile report" button
# to generate an HTML report as output

# 2. Now adding the render() function below we can automate the cretion of the 
#    rendered Rmarkdown report as HTML output 

# 2-2. Generate an HTML report as final output of this "report.R" script
# Add line below to render this script in markdown
# Markdown report combining above scripts

# rmarkdown::render("report.Rmd", output_file = "report.html")
#if(!dir.exists("rendered_report")){dir.create("rendered_report")}

# rmarkdown::render("report.Rmd",output_dir:../rendered_report,output_file = "report.html",html_document(toc = TRUE, toc_depth = 2))
rmarkdown::render("report.Rmd", output_file = "report.html",html_document(toc = TRUE, toc_depth = 2))
