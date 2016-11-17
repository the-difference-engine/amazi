require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = ENV['Consumer_Key']
  config.consumer_secret = ENV['Consumer_Secret']
  config.token = ENV['Token']
  config.token_secret = ENV['Token_Secret']
end