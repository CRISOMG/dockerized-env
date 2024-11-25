#!/bin/bash

if [[ $1 == "production" ]]; then
    NODE_ENV=production docker compose -f ./docker-compose.production.yml up --build -d;
else
    NODE_ENV=development docker compose -f ./docker-compose.development.yml up --build -d;
    sudo docker cp express-api:/api/node_modules ./express-api/node_modules;
    sudo docker cp express-api:/api/dist ./express-api/dist;
    sudo docker cp nuxt-app:/app/node_modules ./nuxt-app/node_modules;
    sudo docker cp nuxt-app:/app/.output ./nuxt-app/.output;

    sudo chown -R $USER:$USER ./express-api/node_modules;
    sudo chown -R $USER:$USER ./express-api/dist;
    sudo chown -R $USER:$USER ./nuxt-app/node_modules;
    sudo chown -R $USER:$USER ./nuxt-app/.output;
fi
