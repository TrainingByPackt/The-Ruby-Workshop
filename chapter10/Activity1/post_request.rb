require 'httparty'

url = "https://www.akshatpaul.com/ruby-fundamentals/properties"
response = HTTParty.post(url, body: { property: {name: "Mr. Ruby Noobie", address: "12, North Orbit" }})
puts response.code
