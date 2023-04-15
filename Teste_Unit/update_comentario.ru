require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/comentarios/2")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Put.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJwaFBUQmpYUllGMkxJUkdGeXZhbXlnIiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IlpNaDhSNEUxUnUySEI2RERCNDJ6VEEiLCJleHBpcnkiOiIxNjgyNzQzMjYxIiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='
request.body = "{\n\n\t\"nome\": \"ola teste\",\n\t\"comentarioT\": \"ola\",\n\t\"post_id\": 5,\n\t\"created_at\": \"2023-04-04T00:00:00.000Z\",\n\t\"updated_at\": \"2023-04-04T00:00:00.000Z\"\n}"

response = http.request(request)
puts response.read_body