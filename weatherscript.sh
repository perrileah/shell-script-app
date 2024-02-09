#! /bin/bash

# Print a message asking the user for a zip code
echo "What is your location?"

# Run the command read and save users response into the variable location
read location

# make a request to WeatherAPI 
weather_data="$(curl -s "http://api.weatherapi.com/v1/current.json?key=APIKEY&q=$location&aqi=no")"

# Parse the resulting JSON data to get weather conditions
conditions="$(echo "$weather_data" | jq -r '.current.condition.text')"


# Parse the resulting JSON data to get temperature
temperature="$(echo "$weather_data" | jq -r '.current.temp_f')"


# Print the weather conditions and temperature
echo "Currently, the weather in $location is $conditions with a temperature of $temperature °F. Have a nice day!"