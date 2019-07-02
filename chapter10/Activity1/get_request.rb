require 'httparty'

url = 'https://www.akshatpaul.com/ruby-fundamentals/list-all-properties'
response = HTTParty.get(url)
puts response.code
puts response.parsed_response
