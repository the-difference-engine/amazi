# Amazi

## Description
This application is a hub for people who want to find bottled water alternatives to do so. In the application, you can view a map of your area and the locations within your vicinity that can cater to your needs, and you can view details about locations.

## Technologies Used
This application uses:
* Rails 5.0
* Amazon AWS https://aws.amazon.com/
* Twilio API https://www.twilio.com/docs/api/rest https://github.com/twilio/twilio-ruby
* Google Places https://developers.google.com/places/
* Google Maps https://developers.google.com/maps/
* ImageMagick and Paperclip http://www.imagemagick.org/script/index.php https://github.com/thoughtbot/paperclip

## Setup
 1. Clone/Fork the application from the github repository
 2. Create a file named .env to hold local config variables. This uses the dotenv gem whose syntax should be followed (https://github.com/bkeepers/dotenv). The variables that need to be stored are:
  * GMAPS_API_KEY is the name of the google maps api key
  * GOOGLE_PLACES_API_KEY is the name of the google places api key
  * AWS_REGION is the region the app is located in on Amazon Web Services
  * AWS_ACCESS_KEY_ID is the access key id for Amazon Web Services
  * S3_BUCKET_NAME is the Amazon Web Services S3 Bucket Name
  * AWS_SECRET_ACCESS_KEY is the Amazon Web Services Secret Access Key
  * S3_ENDPOINT is the Amazon Web Services S3 web endpoint
  * PHONE is the Twilio provided phone number to send from
  * LANG is the Twilio language encoding
  * ACCOUNT_SID is the Twilio Account SID
  * AUTH_TOKEN is the Twilio Auth Token
  * GMAIL_USERNAME is the email used set up mailers within the application, and can send emails to that email.
  * GMAIL_PASSWORD is the password to the email above
 3. Setup from Terminal
* `$ bin/bundle install`
* `$ bin/rails import:data`
* `$ bin/rails db:setup`
 4. Install ImageMagick, either using homebrew: `$ bin/brew install imagemagick` or following instructions from the ImageMagick website: http://www.imagemagick.org/script/download.php#macosx
 5. To run the application locally on port 3000, `rails server`
 6. This application is connected to a number of heroku repositories as well. In order to connect to those repositories, you must have collaborator access to the repositories in question. Once you have that established, run `$ bin/heroku git:remote -a NAME-OF-REPOSITORY-HERE`. To rename that remote, run `$ bin/git remote rename heroku WHAT-YOU-WANT-TO-RENAME-TO`
