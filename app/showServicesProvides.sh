#
# Show the services that monolith and then the microservice will provide
#

# if no ip is provided then the default is 80
ip=${1:-80}


echo "Service : Display a message"
curl http://localhost:${ip}
echo "--"

echo "Service : Acquire a JWT Token"
TOKEN=$(curl http://127.0.0.1:${ip}/login -u user:password | jq -r '.token')
echo $TOKEN
echo "--"

echo "Service : Login using a JWT Token and print a message"
curl -H "Authorization: Bearer $TOKEN" http://127.0.0.1:${ip}/secure

