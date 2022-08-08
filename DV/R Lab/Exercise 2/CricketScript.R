##Session: 2

##Task1 : Take any DataSet and plot 
getwd()
rm(list =ls())
#To set curre1nt directory
setwd("C:/Users/lenovo/Google Drive/Amrita/IV Semester/DataVisualisation/Class/Jan20")
getwd()
library(tidyverse)

"cricket_data.csv" %>% 
  read_csv() %>%
  View()

"rawdata3.csv" %>% 
  read_csv() %>%
  View()

"rawdata3.csv" %>% 
  read_csv() %>%
  summarise(meanx=mean(x), 
            meany= mean(y),
            stdx = sd(x),
            stdy= sd(y),
            corr = cor(y,x))

"rawdata4.csv" %>% 
  read_csv() %>%
  summarise(meanx=mean(x),  ## Average x
            meany= mean(y), ## Average y
            stdx = sd(x), ## SD of x
            stdy= sd(y), ## SD of y
            corr = cor(y,x)) ## Correlation between x and y

"rawdata3.csv" %>% 
  read_csv() %>%
  ggplot(aes(x=x,
             y=y))+
  geom_point()

library(datasauRus)

datasaurus_dozen %>%
  ggplot(aes(x=x,
             y=y,
             color=dataset))+
  geom_point()+
  theme(legend.position = "none")+
  facet_wrap(~dataset, ncol=3)

##bin_rows(dataset1, dataset2) ## To Join the data rows
##mutate creates a new column
datasaurus_dozen %>%
  group_by(dataset) %>%
  mutate(meanx=mean(x),
         meany=mean(y),
         stdx=sd(x),
         stdy=sd(y),
         corr = cor(y,x)) %>%
  View()



datasaurus_dozen %>%
  group_by(dataset) %>%
  mutate(meanx=mean(x),
         meany=mean(y),
         stdx=sd(x),
         stdy=sd(y),
         corr = cor(y,x)) %>%
  ggplot(aes(x=x,
             y=y,
             color=dataset))+
  geom_point()+
  geom_label(x=50,
             y=-1,
             size=2,
             aes(label=paste(meanx %>% round(1), 
                             meany %>% round(1),
                             stdx %>% round(1),
                             stdy %>% round(1),
                             corr %>% round(1),
                             sep="/")))+
  theme(legend.position = "none")+
  facet_wrap(~dataset, ncol=3)-> plot1func

"datasauRus.pdf" %>%
  ggsave(plot1func,
         width=8,
         height=11,
         unit="in")


######################Cricket Data set Begins#########################


"cricket_data.csv" %>% 
  read_csv() %>%
  View()

######################Cricket Data set Ends#########################

