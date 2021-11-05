                    ###### Project 1 free weather API TASK 1 #######
#Enrico Romano
#Khan Gony Jany
#Marco Vita

#######################################################
packages = c("httr", "jsonlite")
installed_packages = packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}
lapply(packages, library, character.only = TRUE)
library(tidyverse)

#######################################################
#BERLIN WEATHER FORECAST
urlberlin= "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,pressure_msl,precipitation,weathercode,snow_height,freezinglevel_height&timezone=Europe%2FBerlin"
my_raw_result<-httr::GET(urlberlin)
str(my_raw_result)
str(my_raw_result$content)
my_content<- httr::content(my_raw_result,as="text")
str(my_content)


my_contentfj<-jsonlite::fromJSON(my_content)
glimpse(my_contentfj)
df<-as.data.frame(my_contentfj)

#######################################################
#ROME WEATHER FORECAST
urlrome= "https://api.open-meteo.com/v1/forecast?latitude=41.8955&longitude=12.4823&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,pressure_msl,precipitation,weathercode,snow_height,freezinglevel_height&timezone=Europe%2FBerlin"

my_raw_result2<-httr::GET(urlrome)
str(my_raw_result2)
str(my_raw_result2$content)
my_content2<- httr::content(my_raw_result2,as="text")
str(my_content2)


my_contentfj2<-jsonlite::fromJSON(my_content)
glimpse(my_contentfj2)
dfrome<-as.data.frame(my_contentfj2)

#######################################################
#LONDON WEATHER FORECAST
url_ldn= "https://api.open-meteo.com/v1/forecast?latitude=51.5002&longitude=-0.1262&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,pressure_msl,precipitation,weathercode,snow_height,freezinglevel_height&timezone=Europe%2FBerlin"
my_raw_result3<-httr::GET(url_ldn)
str(my_raw_result3)
str(my_raw_result3$content)
my_content3<- httr::content(my_raw_result3,as="text")
str(my_content3)


my_contentfj3<-jsonlite::fromJSON(my_content3)
glimpse(my_contentfj3)
dflondon<-as.data.frame(my_contentfj3)

#######################################################
#PARIS WEATHER FORECAST
url_par= "https://api.open-meteo.com/v1/forecast?latitude=48.8567&longitude=2.3510&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,pressure_msl,precipitation,weathercode,snow_height,freezinglevel_height&timezone=Europe%2FBerlin"

my_raw_result4<-httr::GET(url_par)
str(my_raw_result4)
str(my_raw_result4$content)
my_content4<- httr::content(my_raw_result4,as="text")
str(my_content4)


my_contentfj4<-jsonlite::fromJSON(my_content4)
glimpse(my_contentfj4)
dfparis<-as.data.frame(my_contentfj4)

#######################################################
#TOKYO WEATHER FORECAST
url_tokyo= "https://api.open-meteo.com/v1/forecast?latitude=35.6785&longitude=139.6823&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,pressure_msl,precipitation,weathercode,snow_height,freezinglevel_height&timezone=Asia%2FTokyo"
my_raw_result5<-httr::GET(url_tokyo)
str(my_raw_result5)
str(my_raw_result5$content)
my_content5<- httr::content(my_raw_result5,as="text")
str(my_content5)


my_contentfj5<-jsonlite::fromJSON(my_content5)
glimpse(my_contentfj5)
dftokyo<-as.data.frame(my_contentfj5)

#######################################################
#NEW YORK WEATHER FORECAST
url_ny= "https://api.open-meteo.com/v1/forecast?latitude=40.71&longitude=-74.01&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,pressure_msl,precipitation,weathercode,snow_height,freezinglevel_height&timezone=America%2FNew_York"

my_raw_result6<-httr::GET(url_ny)
str(my_raw_result6)
str(my_raw_result6$content)
my_content6<- httr::content(my_raw_result6,as="text")
str(my_content6)


my_contentfj6<-jsonlite::fromJSON(my_content6)
glimpse(my_contentfj6)
df_ny<-as.data.frame(my_contentfj6)

#######################################################
##creation of a single dataset with rbind() function
rbind1<-rbind(df,dflondon)
rbind2<-rbind(dfparis,dfrome)
rbind3<-rbind(df_ny,dftokyo)
rbind4<-rbind(rbind1,rbind2)
meteo_dataframe<-rbind(rbind4,rbind3)

#######################################################
#save as .csv file
library(readr)
write_csv(meteo_dataframe, "C:\\Users\\enric\\OneDrive\\Desktop\\meteo.csv")
