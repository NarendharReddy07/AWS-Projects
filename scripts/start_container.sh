##!/bin/bash
#set -e

# Pull the Docker image from Docker Hub
#docker pull narendhargujjula/simple-python-flask-app

# Run the Docker image as a container
#docker run -d -p 5000:5000 narendhargujjula/simple-python-flask-app

#!/bin/bash
set -e

IMAGE="narendhargujjula/simple-python-flask-app"
CONTAINER="simple-python-flask-app"

# Pull latest image
docker pull $IMAGE

# Stop old container if it exists
docker stop $CONTAINER || true

# Remove old container if it exists
docker rm $CONTAINER || true

# Run new container
docker run -d \
  --name $CONTAINER \
  -p 5000:5000 \
  $IMAGE
