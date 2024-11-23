#!/bin/bash

if [[ $1 == "production" ]]; then
    NODE_ENV=production docker compose up --build -d;
else
    NODE_ENV=development docker compose up --build -d;
    sudo docker cp express-api:/api/node_modules ./express-api/api/node_modules;
    sudo docker cp express-api:/api/dist ./express-api/api/dist;
    sudo docker cp nuxt-app:/app/node_modules ./nuxt-app/app/node_modules;
    sudo docker cp nuxt-app:/app/.output ./nuxt-app/app/.output;
fi
