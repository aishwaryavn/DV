#Clear global variables
rm (list=ls())
#set the working directory
setwd("C:/Users/lenovo/Google Drive/Amrita/II Semester/DataVisualisation/Class/Apr01")

#load the required libraries
library(tidyverse)
library(janitor) # This package is to clean the column names

#List the csv files in the current directory
dir(pattern="*.csv")

# To View Data
"Number_of_Schools-Primary_and_Upper_primary_School.csv" %>%
  read_csv() %>% View("raw_data")

## To pull out a column and find unique values

"Number_of_Schools-Primary_and_Upper_primary_School.csv" %>%
  read_csv() %>% 
  pull(1) %>% unique()

## To reshape or restructure the data
# Save it to tidydata variable
"Number_of_Schools-Primary_and_Upper_primary_School.csv" %>%
  read_csv() %>% 
  filter(`India/ State/ UTs` != "India") %>%
  gather(c(3:12), key="year", value="school_count")   -> tidydata

## To View the column names
colnames(tidydata)

## To clean the column names
"Number_of_Schools-Primary_and_Upper_primary_School.csv" %>%
  read_csv() %>% 
  filter(`India/ State/ UTs` != "India") %>%
  gather(c(3:12), key="year", value="school_count") %>%
  clean_names() 
