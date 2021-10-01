echo "start datapower"
echo "config dir " $PWD/config
echo "local dir " $PWD/local

docker run -it \
  -v $PWD/config:/drouter/config \
  -v $PWD/local:/drouter/local \
  -e DATAPOWER_ACCEPT_LICENSE=true \
  -e DATAPOWER_INTERACTIVE=true \
  -p 9090:9090 \
  -p 9022:22 \
  -p 5554:5554 \
  -p 8000-8081:8000-8081 \
  --name idg \
  ibmcom/datapower


# configure terminal
# web-mgmt
# admin-state "enabled"
# local-address "eth0_ipv4_1" "9090"
# idle-timeout 0
# exit
