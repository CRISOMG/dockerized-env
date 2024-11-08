#!/bin/bash

if [[ $1 == "production" ]]; then
    NODE_ENV=production docker compose up --build -d;
else
    NODE_ENV=development docker compose up --build -d;
fi

sudo docker cp express-api:/api/node_modules ./express-api/api/node_modules;
sudo docker cp nuxt-app:/app/node_modules ./nuxt-app/app/node_modules;
