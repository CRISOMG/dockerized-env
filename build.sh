#!/bin/bash

docker compose up --build -d;
docker cp express-api:/api/node_modules ./express-api/api/node_modules;
docker cp nuxt-app:/app/node_modules ./nuxt-app/app/node_modules;
