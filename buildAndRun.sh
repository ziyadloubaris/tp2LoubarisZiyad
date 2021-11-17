#!/bin/sh
mvn clean package && docker build -t com.loubarisZiyad/tp2LoubarisZiyad .
docker rm -f tp2LoubarisZiyad || true && docker run -d -p 9080:9080 -p 9443:9443 --name tp2LoubarisZiyad com.loubarisZiyad/tp2LoubarisZiyad