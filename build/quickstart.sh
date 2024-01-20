#!/bin/bash

docker build -t mail-app:build -f docker/app.dockerfile .
docker build -t mail-db:build -f docker/db.dockerfile .

docker-compose up -d