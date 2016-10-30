# get current directory to script folder
source_file <- "Source_Classification_Code.rds"
summary_file <- "summarySCC_PM25.rds"

download_dataset <- function() {
  # download file
  assignment_file <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  assignment_dest_file <- "assignment.zip"
  
  # downloading file
  print(paste("Downloading dataset from :", assignment_file))
  download.file(assignment_file, destfile = assignment_dest_file, method = "curl")
  
  # Unzip files
  print("Extracting dataset files!")
  unzip(assignment_dest_file, exdir = ".")
  
  if (!file.exists(source_file) | !file.exists(summary_file)) return (FALSE) else return (TRUE)
}

# install and load dependent packages
install_dependences <- function() {
  requiredPackages = c('plyr','dplyr', 'ggplot2')
  for(p in requiredPackages){
    if(!require(p,character.only = TRUE)) install.packages(p)
    library(p,character.only = TRUE)
  }
}

set_working_folder <- function(script.directory) {
  if (getwd() != script.directory)
  {
    print(paste("Current directory NOT set correctly : ", getwd()))
    setwd(script.directory)
    if (getwd() != script.directory) answer <- FALSE else answer <- TRUE
    print(paste("Setting current directory to correct", answer, ":", getwd()))
  }
  else
  {
    print(paste("Current directory set correctly : ", getwd()))
  }
}

plot1 <- function() {
  script.directory <- getSrcDirectory(function(x) {x})
  
  # load dependent libraries
  install_dependences()
  
  # set working directory
  set_working_folder(script.directory) 

  # check if dataset folder exist
  if (!file.exists(source_file) | !file.exists(summary_file))
  {
    ans <- readline(prompt="Dataset NOT exist, do you like to download it?")
    if (ans != "y" && ans != "Y") 
    {
      stop("Dataset NOT exist, exiting!!!")
    }
    
    # download and unzip dataset
    if (download_dataset() == TRUE) 
    {
      print("Dataset downloaded and extracted correctly")  
    }
    else
    {
      stop("Problem occurred when downloading and extracting dataset!")
    }
  }

  print("Dataset exist, starting to analyse it!")
  
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")

  total <- NEI %>% group_by(year) %>% summarise(Total = sum(Emissions))
  
  png(file = "plot1.png", width = 480, height = 480)
  
  plot(total, pch=20, type="o", main = "Total Emissions by Year")
  
  dev.off()
  
  print("Everything finished correctly!")
}