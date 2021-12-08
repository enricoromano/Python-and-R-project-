
# Project Work Python and R

Some vital information for everybody is current weather and weather forecast. 
The project is focusing on weather forecasting in order to make the project done we collect data by accessing the API [OpenMeteo](https://open-meteo.com/en/docs). 
The task is completed when we selected some locations and merged them to have a dataset of 1000 observations, 
we used R language to complete the task. Then add the code to a GIT repository. 
The structure of the paper is as follows,variables where we have 25 variables and
 description of the scripts how the script is working.

## Description of the script
The script is based on the building of six different dataset, one for each country that we have selected.
First of all, we are going to ask for data with the function ```GET```. 
After that, through ```str()``` you can visualize the raw data 
and ```content``` function gives the possibility of convert the data as a text, 
in order to make easier work with json data.
the ```fromJSON``` function will turn that json text string
in a more usable R object. ```glimpse()``` can help
 us to get a good look at the structure. 
 Then, ```as.data.frame()``` transform the JSON list into a 
 dataframe.
 We repeat this process for each dataset and, after the 
 building of all of them, with ```rbind()``` we merged 
 the datasets together in a single dataset with 1008 observations
 and 25 variables.
 In conclusion, we saved the dataset as a ```.csv``` file.
## API Reference

#### Get all items

```http
  GET https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&hourly=temperature_2m,relativehumidity_2m,dewpoint_2m,apparent_temperature,pressure_msl,precipitation,weathercode,snow_height,freezinglevel_height&timezone={UTC}%2{Location}
```
 Parameter | Unit    | Description                |
| :-------- | :------- | :------------------------- |
| `temperature_2m` | `°C (°F)` | Air temperature 2 meters above the ground  |
| `relativehumidity_2m`      | `%` | Relative humidity 2 meters above ground |
| `dewpoint_2m`      | `°C (°F)` | Dew point temperature 2 meters above ground |
| `apparent_temperature`      | `°C (°F)` | Perceived feel like temperature  |
| `pressure_msl`      | `°C (°F)` | Atmospheric air pressure reduced to sea level |
| `precipitation`      | `mm (inch)` | Sum of the precipitation of the preceding hour
| `weathercode`      | `WMO Code` | weather condition as numeric code
| `snow_height`      | `meters` | Snow height on the ground
| `freezinglevel_height`      | `meters` |Altitude of the 0°C level

 Parameter | Format    | Description                |
| :-------- | :------- | :------------------------- |
| `latitude, longitude`| `Floating point`|Geographical coordinate of the location|
|`hourly_units`|`object`|	For each selected weather variable, the unit will be listed here|
|`utc_offset_seconds`|`iso8601`|Applied timezone offset|
|`generation_time`|`Floating Point`|Generation time of the weather forecast in milli seconds|
|`elevation`|`Floating Point`|The elevation in meters of the selected weather grid-cell|

### Other Documentation
You can find the documentation for task 2 in the two .zip files
## Authors

- Enrico Romano(enrico.romano@studenti.luiss.it)
- Khan Gony Jany (Khan.jany@studenti.luiss.it)
- Antonio Marco Vita (antonio.vita@studenti.luiss.it)
