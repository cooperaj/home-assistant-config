#!/bin/sh

docker volume create -d local-persist -o mountpoint=$(pwd)/data/mosquitto-data --name=mosquitto-data
docker volume create -d local-persist -o mountpoint=$(pwd)/data/mosquitto-config --name=mosquitto-config
docker volume create -d local-persist -o mountpoint=$(pwd)/data/homeassistant-config --name=homeassistant-config
docker volume create -d local-persist -o mountpoint=$(pwd)/data/nodered-data --name=nodered-data
