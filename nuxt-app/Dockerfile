FROM node:20.18

RUN apt-get update 
# RUN apt-get install -y htop
# RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app
VOLUME '/app'
COPY ./app/package.json ./
COPY ./app/yarn.lock ./
RUN yarn global add pm2
RUN yarn install
EXPOSE 3001

# CMD ["yarn","dev"]
# CMD ["pm2-runtime", "start", "/app/ecosystem.config.cjs"]
