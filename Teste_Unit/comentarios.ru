require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/comentarios/2")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJDelFrNlFydVdULWRlY21zcDBSdHNRIiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IjRmd1p0dkRFR2pfVGNqaFFpVkFCNVEiLCJleHBpcnkiOiIxNjgyNzQzMDk3IiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='

response = http.request(request)
puts response.read_body