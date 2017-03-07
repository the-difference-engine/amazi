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
$ brew install imagemagick
 ```

3. Create ENV  File ('.../.env') with a GMAPS_API_KEY, GOOGLE_PLACES_API_KEY
4. Also in the ENV FILE you will need to add AWS_REGION, AWS_ACCESS_KEY_ID, S3_BUCKET_NAME, AWS_SECRET_ACCESS_KEY
5. See Team Lead for Appropriate Contents of the ENV File.

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


