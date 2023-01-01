# Get a list of all the containers
containers=$(pct list | grep -Eo "^[0-9]+")
read -p "Enter Command: " command
# execute the command for each container
for container in $containers; do
  pct exec $container $command
done