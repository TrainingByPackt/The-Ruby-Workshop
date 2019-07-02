require 'net/http'

Net::HTTP.get('example.com', '/index.html')

response = Net::HTTP.get_response('example.com', '/')
puts response.code
puts response.body
