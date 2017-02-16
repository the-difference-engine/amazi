# AMAZI README

## Description
Describe the AMAZI App

## Setup
 1. Clone Amazi App
 2. Setup from Terminal
 ```
$ bin/bundle install
$ bin/rails db:setup
$ bin/rails import:data
 ```

3. Create ENV  File ('.../.env') with a GMAPS_API_KEY, GOOGLE_PLACES_API_KEY
4. See Team Lead for Appropriate Contents of the ENV File.

# Finding some Data
SF Lat Long : 37.773972, -122.431297

## Documentation
https://www.waterqualitydata.us/webservices_documentation/

## Example
https://www.waterqualitydata.us/Station/search?lat=37.7&long=-122.4&within=1&mimeType=xml&characteristicName=Atrazine

Contaminant Categories
https://www.waterqualitydata.us/Codes/Characteristictype?mimeType=xml

Contaminant Names
https://www.waterqualitydata.us/Codes/Characteristicname?mimeType=xml

https://www.waterqualitydata.us/Station/search?lat=37.7&long=-122.4&within=1&characteristicName=Bromide&mimeType=xml


