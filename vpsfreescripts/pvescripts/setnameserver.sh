while true
do
# Get a list of all the containers
containers=$(pct list | grep -Eo "^[0-9]+")

# Set the name server for each container
for container in $containers; do
  pct set $container --nameserver "2001:67c:2b0::4 2001:67c:2b0::6"
done
done