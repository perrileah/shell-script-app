# shell-script-app

<img width="918" alt="Screenshot 2024-02-09 at 1 03 11 PM" src="https://github.com/perrileah/shell-script-app/assets/125906074/c055e919-0525-430c-950f-68e37a241b4f">


My first shell script! This is a simple shell script that gets the weather for a particular zip code or city. 

First, the user is asked to enter a city or zip code. The script reads and saves the user's response into the variable "location." Then it makes a request out to WeatherAPI using the location and stores information in the weather_data variable. Weather_data is then parsed using jq to provide both the conditions and temperature. Finally, the echo command reads back the weather conditions and temperature for the entered location.
