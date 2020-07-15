#!/bin/sh

docker volume create -d local-persist -o mountpoint=$(pwd)/data/traefik-config --name=traefik-config
docker volume create -d local-persist -o mountpoint=$(pwd)/data/mosquitto-data --name=mosquitto-data
docker volume create -d local-persist -o mountpoint=$(pwd)/data/mosquitto-config --name=mosquitto-config
docker volume create -d local-persist -o mountpoint=$(pwd)/data/homeassistant-config --name=homeassistant-config
docker volume create -d local-persist -o mountpoint=$(pwd)/data/nodered-data --name=nodered-data
docker volume create -d local-persist -o mountpoint=$(pwd)/data/pihole-config --name=pihole-config
docker volume create -d local-persist -o mountpoint=$(pwd)/data/dnsmasq-config --name=dnsmasq-config
