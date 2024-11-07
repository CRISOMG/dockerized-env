#!/bin/bash

# docker compose up --build -d;

docker exec -it express-api bash -c "yarn build && yarn start"
docker exec -it nuxt-app bash -c "yarn build && yarn start"

