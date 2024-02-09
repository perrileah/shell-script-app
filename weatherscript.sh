#! /bin/bash

# Print a message asking the user for a city or zip code
echo "Please enter a city or zip code"

# Run the command read and save users response into the variable location
read location

# make a request to WeatherAPI 
weather_data="$(curl -s "http://api.weatherapi.com/v1/current.json?key=APIKEY&q=$location&aqi=no")"

# Parse the resulting JSON data to get weather conditions
conditions="$(echo "$weather_data" | jq -r '.current.condition.text')"


# Parse the resulting JSON data to get temperature
temperature="$(echo "$weather_data" | jq -r '.current.temp_f')"


# Print the weather conditions and temperature
echo -e "Currently, the weather in \033[1;32m $location \033[0m is \033[1;32m $conditions \033[0m with a temperature of \033[1;32m $temperature °F. \033[0m Have a nice day! 😊"