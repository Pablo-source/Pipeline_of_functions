# Pipeline_of_functions
Moving from sequence of scripts to pipeline of functions

1.First step of this project we create three **individual scripts**:

- 01_load_data.R
- 02_model.R
- 02_plot.R

2.Second step, we automate slightly the scripts execution using **source() function**:

2.1 Saving all three scripts in a dedicated folder called R
2.2 Using source() function to run all three scripts
Example for the first script
**source(here("R","01_load_data.R"))**
dataset


3.Third, **create a markdown report** including all outputs from the above three scripts
Then we **render markdown document when sourcing "report.R" script** this report.R script combines three individual scripts:
rmarkdown::render()

In the original report R script called "report.R" we have added this lines:
-  Run this script pressing "source" button
  
3.1 Source individual R scripts from R folder to create content for markdown report
library(tidyverse)
library(here)
source(here("R","01_load_data.R"))
dataset
source(here("R","02_model.R"))
fit
source(here("R","03_plot.R"))
hist

3.2 Now adding the render() function below we can automate the cretion of a Markdown report 
- rendered Rmarkdown report as HTML output 
- Generate an HTML report as final output of this "report.R" script
Added line below to render this script in markdown. It is a new Markdown report combining above scripts
- **rmarkdown::render("report.Rmd", "html_document")**

4.Refactor previous scripts to use them within {targets} package
Using Targets library we start build building a pipeline of function to creaete and automate our report
