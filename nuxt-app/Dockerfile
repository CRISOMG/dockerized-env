FROM node:20.18-alpine

# RUN apt-get update 
# RUN apt-get install -y tini bash htop
# RUN rm -rf /var/lib/apt/lists/*

RUN apk update && apk add --no-cache tini bash htop
# SHELL ["/bin/bash", "-c"]
ENV NODE_ENV=${NODE_ENV}


WORKDIR /app
VOLUME '/app'
COPY ./app/ ./
RUN yarn global add pm2
RUN yarn install

VOLUME '/app/.output'
RUN yarn build
EXPOSE 3001

# CMD ["yarn","dev"]
# CMD ["pm2-runtime", "start", "/app/ecosystem.config.cjs"]
# ENTRYPOINT ["/sbin/tini", "--"]
# CMD ["bash"]

# ARG NODE_ENV
# CMD ${if eq "${NODE_ENV}" "development"} ["yarn","dev"] ${else} ["yarn","start"]
CMD sh -c 'if [ "$NODE_ENV" = "development" ]; then yarn dev; else pm2-runtime start ecosystem.config.cjs; fi'