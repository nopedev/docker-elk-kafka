#!/bin/bash
# docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -e HOST_IP=$1 -e ZK=$2 -i -t wurstmeister/kafka /bin/bash

# extract from docker pinspect
export HOST_IP=$(docker inspect $(docker ps | awk '/kafka_kafka/ { print $1 }') | grep IPAddress | grep 172 | awk '{ print $2 }' | awk '{ gsub(/"|,/, "", $1); print }')
export ZK_IP=$(docker inspect $(docker ps | awk '/zookeeper/ { print $1 }') | grep IPAddress | grep 172 | awk '{ print $2 }' | awk '{ gsub(/"|,/, "", $1); print }')

docker compose exec -e HOST_IP=$HOST_IP:9092 -e ZK=$ZK_IP:2181 kafka bash