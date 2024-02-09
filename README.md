# weather-shell-script

<img width="720" alt="Screenshot 2024-02-09 at 1 11 46 PM" src="https://github.com/perrileah/weather-shell-script/assets/125906074/7ef1d377-3f45-43a3-aaca-f18f0ff43a1d">

My first shell script! This is a simple shell script that gets the weather for a particular zip code or city. 

First, the user is asked to enter a city or zip code. The script reads and saves the user's response into the variable "location." Then it makes a request out to WeatherAPI using the location and stores information in the weather_data variable. Weather_data is then parsed using jq to provide both the conditions and temperature. Finally, the echo command reads back the weather conditions and temperature for the entered location.
