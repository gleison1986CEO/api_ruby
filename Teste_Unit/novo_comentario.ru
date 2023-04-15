require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/comentarios")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Post.new(url)
request["Content-Type"] = 'application/json'
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJXZ3ZTbzR6T0dfVjQ2ejUwRjctQUZ3IiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IlNoY2R0LW5Kd3RVWWFWUGtxR1lxanciLCJleHBpcnkiOiIxNjgyNzQ1ODI3IiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='
request.body = " {\n\t\t\"id\": 2,\n\t\t\"nome\": \"ola teste\",\n\t\t\"comentarioT\": \"ola\",\n\t\t\"post_id\": 8,\n\t\t\"created_at\": \"2023-04-04T00:00:00.000Z\",\n\t\t\"updated_at\": \"2023-04-04T00:00:00.000Z\"\n\t}"

response = http.request(request)
puts response.read_body