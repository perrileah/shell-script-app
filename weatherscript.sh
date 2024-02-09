#! /bin/bash

# make a request to WeatherAPI 
weather_data="$(curl -s "http://api.weatherapi.com/v1/current.json?key=APIKEY&q=Chicago&aqi=no")"

# Parse the resulting JSON data to get weather conditions
conditions="$(echo "$weather_data" | jq -r '.current.condition.text')"

echo $conditions
