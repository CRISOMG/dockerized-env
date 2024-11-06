FROM node:18.20

RUN apt-get update 
RUN apt-get install -y ffmpeg
# RUN apt-get install -y htop
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app
# COPY ./app .
RUN yarn global add pm2
RUN yarn install
# EXPOSE 3002
# CMD ["yarn","dev"]
