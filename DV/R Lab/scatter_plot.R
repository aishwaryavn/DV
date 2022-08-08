## Session 1: January 6, 2018
## To get the current working directory
getwd()
rm(list =ls())
#To set curre1nt directory
setwd("C:/Users/lenovo/Google Drive/Amrita/IV Semester/DataVisualisation/Class/Jan6")
getwd()
library(tidyverse)

#
iris %>%
  ggplot(aes(x=Sepal.Width, 
             y=Sepal.Length)) + 
  geom_point()


iris %>%
  ggplot(aes(x=Sepal.Width, 
             y=Sepal.Length,
             color=Species)) + 
  geom_point()

## 2.Data Import ###

"amrita/salary_data.csv" %>%
  read_csv() %>%
  View()

"amrita/salary_data.csv" %>%
  read_csv() %>%
  ggplot(aes(x=experience,
             y=salary)) + 
  geom_point()

## To change the size of the point and add color to the point

"amrita/salary_data.csv" %>%
  read_csv() %>%
  ggplot(aes(x=experience,
             y=salary)) + 
  geom_point(size=5, 
             color="blue",
             alpha=0.5) +
  labs(title="Employee Salary Vs Experience1",
       x="Experience (in Years)", 
       y="Salary (in Lakhs)")+
  theme_minimal()


## Modeling & Prediction


"amrita/salary_data.csv" %>%
  read_csv() %>%
  ggplot(aes(x=experience,
             y=salary)) + 
  geom_point(size=5, 
             color="blue",
             alpha=0.5) +
  geom_smooth(method="lm", se=FALSE)+
  labs(title="Employee Salary Vs Experience1",
       x="Experience (in Years)", 
       y="Salary (in Lakhs)")+
  theme_grey()
