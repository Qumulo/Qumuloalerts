#!/bin/bash

export INFLUXDB_VERSION=2.0
export INFLUXDB_CONFIGDIR=$(pwd)/influxdb/config

export QUMULOALERTS_VERSION=5.3.4
export ALERTS_CONFIGDIR=$(pwd)/config/alerts/

export CONSUMER_CONFIGDIR=$(pwd)/config/consumer/

# If you have a docker swarm, then uncomment the following line and
# comment the line on "docker-compose up"

# docker stack deploy --compose-file docker-compose.yml storagereport

# The following line is how you start a docker instance when you do not
# have a docker swarm

docker network create --driver bridge --attachable qumuloalerts

docker compose up --detach


