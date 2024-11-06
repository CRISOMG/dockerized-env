FROM node:18.20
WORKDIR /app
RUN apt-get install -y htop
# COPY ./app .
RUN yarn install
RUN yarn global add pm2
EXPOSE 3001
# CMD ["yarn","dev"]
