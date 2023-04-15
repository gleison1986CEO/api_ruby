require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/posts/2")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Put.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJ6YlNHUzUySTRHVm5NQTY1OENsZjRRIiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IkFMMjlEcW5mTWo1VW5QUHpUSy1HQmciLCJleHBpcnkiOiIxNjgyNzQyODE0IiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='
request.body = "{\n\n\t\t\"titulo\": \"facebook commentefeEEEfwfwe\",\n\t\t\"texto\": \"fewfewefwfdeffwfewefwefe\",\n\t\t\"user_id\": 1,\n\t\t\"created_at\": \"2023-04-04T00:00:00.000Z\",\n\t\t\"updated_at\": \"2023-04-04T00:00:00.000Z\"\n\t}"

response = http.request(request)
puts response.read_body