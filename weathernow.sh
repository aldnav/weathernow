#!/bin/sh
# Author: Aldrin A. Navarro
# Tells you the weather now based from accuweather

echo "http://www.accuweather.com/en/ph/cebu-city/262768/weather-forecast/262768" |
wget -q -O- -i- |
hxnormalize -x |
hxselect -i "#forecast-feed-3day-sponsor > ul > li" |
lynx -stdin -dump > weatherdata

cat weatherdata
