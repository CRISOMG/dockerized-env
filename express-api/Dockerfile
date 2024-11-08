FROM node:20.18-alpine

# RUN apt-get update 
# RUN apt-get install -y ffmpeg tini bash
# RUN apt-get install -y htop
# RUN rm -rf /var/lib/apt/lists/*

RUN apk update && apk add --no-cache ffmpeg tini bash htop
# SHELL ["/bin/bash", "-c"]


WORKDIR /api
VOLUME '/api'

COPY ./api/ ./
RUN yarn global add pm2
RUN yarn install

VOLUME '/api/dist'
RUN yarn build
EXPOSE 3002
# CMD ["yarn","dev"]
# CMD ["pm2-runtime", "start", "/api/ecosystem.config.cjs"]

# ENTRYPOINT ["/sbin/tini", "--"]
# CMD ["bash"]

# ARG NODE_ENV
ENV NODE_ENV=${NODE_ENV}
# CMD ${if "${NODE_ENV}" -eq "development"} ["yarn","dev"] ${else}  ["yarn","start"]
CMD sh -c 'if [ "$NODE_ENV" = "development" ]; then yarn dev; else pm2-runtime start ecosystem.config.cjs; fi'

