library(tidyverse)
setwd("/Users/hantangzhou/OneDrive/Columbia University in the City of New York/STAT GR5702/Final Project/edav_project")
data <- read_csv('Rodent_Inspection.csv')

data <- data %>% select(-JOB_TICKET_OR_WORK_ORDER_ID, -JOB_ID, -LOCATION, -JOB_PROGRESS, -BOROUGH, -X_COORD, 
                        -Y_COORD, -APPROVED_DATE, -ID)

data <- data %>% select(-BBL, -LOT, -BLOCK, -HOUSE_NUMBER, -STREET_NAME, -RESULT)

data <- data %>% drop_na()

data <- tibble::rowid_to_column(data, "ID")

#write_csv(data, "Rodent_Inspection_Lite.csv")