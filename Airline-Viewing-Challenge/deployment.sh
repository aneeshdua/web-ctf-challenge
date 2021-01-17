#!/bin/bash
echo "Stopping containers with name airline-challenge"
sudo docker stop $(sudo docker ps -aq --filter name=airline-challenge)

echo "Remove airline-challenge stopped container"
sudo docker rm $(sudo docker ps -aq --filter name=airline-challenge)

echo "Build airline-challenge image"
sudo docker build -t airline-challenge

echo "Deploying the updated container"
docker run -p 49160:3000 -d airline-challenge






