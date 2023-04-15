require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/posts/1")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Delete.new(url)
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJudDFaWmlMRmFBUmZxRXlPTEFCc1lBIiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IjllTHJPc2d4d0RteEp6dHVKeG1lQVEiLCJleHBpcnkiOiIxNjgyNzQyMzIwIiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='

response = http.request(request)
puts response.read_body