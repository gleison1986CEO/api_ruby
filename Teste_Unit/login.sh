curl --request POST \
  --url http://127.0.0.1:3000/api/v1/auth/sign_in \
  --header 'Content-Type: application/json' \
  --data '{
	"email": "gleison@gmail.com",
	"password": "XXXXXXXXXXXXXXX"
}'
