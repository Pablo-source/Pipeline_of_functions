# Pipeline_of_functions
Moving from sequence of scripts to pipeline of functions

1. First step of this project we create three individual scripts:

- 01_load_data.R
- 02_model.R
- 02_plot.R

2. Second step, we automate slightly the execution of these three scripts

2.1 Saving all three scripts in a dedicated folder called R
2.2 Using source() function to run all three scripts
Example for the first script
source(here("R","01_load_data.R"))
dataset

2.3 Also we create a markdown report including all outputs from the above three scripts
Rendering the markdown document output as HTML called "report.html" can be automated by including this script in the "report.R" script:
rmarkdown::render()
