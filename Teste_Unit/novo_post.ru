require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/posts")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJ3aHBoSnpQNUVpOWRvQ2lDRFdQSW5nIiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IjYyZWs5NkdqMWk0eHF5WlJTTkZCZFEiLCJleHBpcnkiOiIxNjgyNzQwODYxIiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='
request.body = " {\n\t\t\"id\": 1,\n\t\t\"titulo\": \"facebook commentefefwfwe\",\n\t\t\"texto\": \"fewfewefwfdeffwfew\",\n\t\t\"user_id\": 1,\n\t\t\"created_at\": \"2023-04-04T00:00:00.000Z\",\n\t\t\"updated_at\": \"2023-04-04T00:00:00.000Z\"\n\t}"

response = http.request(request)
puts response.read_body