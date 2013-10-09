#!/bin/sh

docker ps

# Example
# > ID            IMAGE                          COMMAND              ...   PORTS
# > ecce33b30ebf  gasi/centos-node-hello:latest  node /src/index.js         49160->8080

# In the example above, docker mapped the 8080 port of the container to 49160.

# Now you can call your app using curl (install if needed via: sudo apt-get install curl):

curl -i localhost:49160
