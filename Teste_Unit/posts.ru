require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/posts")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJXZ3ZTbzR6T0dfVjQ2ejUwRjctQUZ3IiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IlNoY2R0LW5Kd3RVWWFWUGtxR1lxanciLCJleHBpcnkiOiIxNjgyNzQ1ODI3IiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='

response = http.request(request)
puts response.read_body