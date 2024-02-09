#! /bin/bash


# set default location to the geolocation of the IP address
location="$(curl -s ipinfo.io | jq -r '.loc')"

echo $location
