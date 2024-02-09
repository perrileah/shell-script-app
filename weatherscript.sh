#! /bin/bash

# make a request to WeatherAPI 
weather_data="$(curl -s "http://api.weatherapi.com/v1/current.json?key=APIKEY&q=Chicago&aqi=no")"

# Parse the resulting JSON data to get weather conditions
conditions="$(echo "$weather_data" | jq -r '.current.condition.text')"


# Parse the resulting JSON data to get temperature
temperature="$(echo "$weather_data" | jq -r '.current.temp_f')"


# Print the weather conditions and temperature
echo "Currently, the weather is $conditions with a temperature of $temperature °F. Have a nice day!"