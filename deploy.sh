#!/bin/bash

docker compose down
docker system prune -f --all
docker rmi express:latest
docker build -f ./Dockerfile -t express:latest .
docker compose down
docker compose up -d
docker logs -f express
