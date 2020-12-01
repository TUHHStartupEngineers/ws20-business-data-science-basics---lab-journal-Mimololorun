#covid api
library(httr)
library(jsonlite)

covid_url <- "https://api.covid19api.com/"
covid_data <- GET(covid_url)
covid_data
 
covid_data_list <- covid_data %>%
                  .$content %>%
                  rawToChar() %>%
                  fromJSON()
covid_data_list


