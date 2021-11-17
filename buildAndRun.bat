@echo off
call mvn clean package
call docker build -t com.loubarisZiyad/tp2LoubarisZiyad .
call docker rm -f tp2LoubarisZiyad
call docker run -d -p 9080:9080 -p 9443:9443 --name tp2LoubarisZiyad com.loubarisZiyad/tp2LoubarisZiyad