while true
do
# Get a list of all the containers
containers=$(pct list | grep -Eo "^[0-9]+")

# Set the name server for each container
for container in $containers; do
  pct set $container --nameserver "2a00:1098:2c::1 2a00:1098:2b::1 2a01:4f8:c2c:123f::1"
done
done
