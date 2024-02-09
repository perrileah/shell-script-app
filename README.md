# shell-script-app

My first shell script! This is a simple shell script that gets the weather for a particular zip code or city. 

First, the user is asked to enter a city or zip code. The script reads and saves the user's response into the variable "location." Then it makes a request out to WeatherAPI using the location and stores information in the weather_data variable. Weather_data is then parsed using jq to provide both the conditions and temperature. Finally, the echo command reads back the weather conditions and temperature for the entered location.
