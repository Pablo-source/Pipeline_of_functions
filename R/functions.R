# functions.R script

## Helper ---------------
files <- list.files(here::here("R"),
                    full.names = TRUE,
                    pattern = "R$")

# Function 01: Source all files from R folder
source_all <-function(path = "R"){
  files <- list.files(here::here(path),
                      full.names = TRUE,
                      pattern = "R$")
  suppressMessages(lapply(files,source))
  invisible(path)
}

source_all()

## Pipeline ----------

# Previous 01_load_data.R script transformed to be use with Targets
read_and_clean <- function(path){
  raw_data <- read_csv(path, col_names=TRUE)
  raw_data %>%
    mutate(Ozone = replace_na(Ozone, mean(Ozone, na.rm = TRUE)))
}

# Previous 02_model.R script transformed to be used with Targets
fit_model <- function(data){ 
  lm(Ozone~Wind + Temp, data)  
}

# Previous 03_plot.R script transformed to be used with Targets
create_plot <-  function (data) {
  ggplot(dataset) + geom_histogram(aes(x = Ozone)) + theme_gray(24)
}
