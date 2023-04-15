require 'uri'
require 'net/http'

url = URI("http://127.0.0.1:3000/api/v1/comentarios/3")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Delete.new(url)
request["Authorization"] = 'Bearer eyJhY2Nlc3MtdG9rZW4iOiJTYWMzOWdqbkZNbWhTTjJvdWw1U2V3IiwidG9rZW4tdHlwZSI6IkJlYXJlciIsImNsaWVudCI6IkMwbDZuVEpRSnNHRlEzckdQcHozbUEiLCJleHBpcnkiOiIxNjgyNzQzNDcyIiwidWlkIjoiZ2xlaXNvbkBnbWFpbC5jb20ifQ=='

response = http.request(request)
puts response.read_body