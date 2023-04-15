require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/auth/sign_in")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Authorization"] = "Bearer foobar"
request["Content-Type"] = 'application/json'
request.body = "{\n\t\"email\": \"gleison@gmail.com\",\n\t\"password\": \"0908Gle@\"\n}"


response = http.request(request)
puts response.read_body