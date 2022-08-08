#clears the global environment
rm(list = ls())

#sets working directories
setwd("C:/Users/lenovo/Google Drive/Amrita/IISemester/DataVisualisation/amrita/8_var_plot")

#load required libraries
library(tidyverse)

"employee_diversity.csv" %>% 
  read_csv() %>% View()
#Data import
"employee_diversity.csv" %>% 
  read_csv() %>% 
  ggplot(aes(x=reorder(factor(Id),Salary),
             y=Salary, shape = Gender)) + 
  geom_point(aes(color = Location,
                 size = Experience)) +
  geom_text(aes(label = paste0(Name," (",Experience,")")),
            nudge_y = 2,
            size = 3) +
  facet_grid(~Sport + Travel+ Position, 
             scales = "free_x", 
             space = "free_x") +
  labs(x = "Employee id",
       y = "Salary in lakhs of rupees per annum",
       title = "Employee diversity data",
       size = "Experience (years)",
       subtitle = "",
       caption = "plot by @lan24hd") +
  theme_grey() +
  theme(axis.title.x = element_text(color = "grey50"),
        axis.title.y = element_text(color = "grey50"),
        plot.title = element_text(color = "grey50"),
        legend.position = "bottom") 


