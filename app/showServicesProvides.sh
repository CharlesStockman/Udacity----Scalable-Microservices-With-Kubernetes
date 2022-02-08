#
# Show the services that monolith and then the microservice will provide
#
# The program need the ip address of the server as the first argument and
# the port as the second.  If none of these are provided then the 
# ip address andthe port are provided by default.
#

# If no localhost is provided the deault should be 127.0.0.1
host=${1:-127.0.0.1}

# if no ip is provided then the default is 80 which is the second argument
ip=${2:-80}


echo "Service : Display a message"
curl http://${host}:${ip}
echo "--"

echo "Service : Acquire a JWT Token"
TOKEN=$(curl http://${host}:${ip}/login -u user:password | jq -r '.token')
echo $TOKEN
echo "--"

echo "Service : Login using a JWT Token and print a message"
curl -H "Authorization: Bearer $TOKEN" http://{$host}:${ip}/secure

